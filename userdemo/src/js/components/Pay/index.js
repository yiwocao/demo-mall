import React, {Component} from 'react';
import './index.scss';
import className from 'classnames';
import NormalHeader from '../NormalHeader';
import { List, Button, Toast } from 'antd-mobile';
import {GeneralCtr} from '../../controller/GeneralCtr';
import {MallCtr} from '../../controller/MallCtr';
import {UserCtr} from '../../controller/UserCtr';

const Item = List.Item;
const Brief = Item.Brief;

const Util = require('../../util/util');

const wechatIcon = require('../../../images/wechat.png');
const remainIcon = require('../../../images/remain.png');

export default class Pay extends Component {
    constructor(){
        super();
        this.state = {
            index: 1,
            price1: 0,
            price3: 0,
            accountReamin: 0
        };
    }
    componentDidMount(){
        Util.showLoading();
        Promise.all([
            this.getAccount(),
            this.getOrderDetail()
        ]).then(Util.hideLoading).catch(() => {});
        GeneralCtr.recordPageView();
    }
    componentWillUnmount(){
        if (document.addEventListener) {
            document.removeEventListener("WeixinJSBridgeReady", this.onBridgeReady.bind(this));
        } else if (document.attachEvent) {
            document.detachEvent('WeixinJSBridgeReady', this.onBridgeReady.bind(this));
            document.detachEvent('onWeixinJSBridgeReady', this.onBridgeReady.bind(this));
        }
    }
    // 获取账户详情
    getAccount(){
        return UserCtr.getAccount(true)
            .then((data) => {
                for(let i = 0; i < data.length; i++){
                    if(data[i].currency == "JF"){
                        this.setState({
                            accountReamin: data[i].amount
                        });
                        break;
                    }
                }
            });
    }
    // 获取订单详情
    getOrderDetail(){
        return MallCtr.getOrderDetail(this.props.params.code, true)
            .then((data) => {
                if(data.status != "1"){
                    Toast.info("该订单不处于带支付状态", 1);
                    setTimeout(() => Util.goPath('/user'), 1e3);
                    return;
                }
                this.setState({
                    price1: data.amount1 || 0,
                    price3: data.amount3 || 0
                });
            });
    }
    // 支付方式修改
    handleChange(index, e){
        e.stopPropagation();
        e.preventDefault();
        this.setState({index});
    }
    handleClick(e){
        e.stopPropagation();
        e.preventDefault();
        let {index} = this.state;
        if(index == 0){
        let payType = 5;
        this.payOrder(index, payType);
        }else{
        let payType = 4;
        this.payOrder1(index, payType);
        }
    }
    // 支付订单
    payOrder(index, payType){
        Util.showLoading("支付中...");
        MallCtr.payOrder(this.props.params.code, payType)
            .then((data) => {
            this.wxPay(data);
            }).catch((msg) => {
            if(msg == "请先绑定微信"){
                Toast.hide();
                Modal.alert('提示', '请先进行微信登录，并关联手机号后，才可以进行微信支付?', [
                    { text: '取消', onPress: () => {} },
                    { text: '确定', onPress: () => {
                        this.goLogin();
                        // Util.goLogin(true);
                    } }
                ]);
            }
        });
    }
    payOrder1(index, payType){
        Util.showLoading("支付中...");
        MallCtr.payOrder1(this.props.params.code, payType)
            .then((data) => {
                Toast.success("支付成功！", 1);
                setTimeout(() => {
                    Util.goPath('/user');
                }, 1e3);
            }).catch(() => {});
    }
    // 微信支付触发事件
    onBridgeReady() {
        WeixinJSBridge.invoke(
            'getBrandWCPayRequest', {
                "appId": this.resp.appId, //公众号名称，由商户传入
                "timeStamp": this.resp.timeStamp, //时间戳，自1970年以来的秒数
                "nonceStr": this.resp.nonceStr, //随机串
                "package": this.resp.wechatPackage,
                "signType": this.resp.signType, //微信签名方式：
                "paySign": this.resp.paySign //微信签名
            },
            (res) => {
                Util.hideLoading();
                if (res.err_msg == "get_brand_wcpay_request:ok") {
                    this.setState({success: 1});
                    Util.goPath('/user');
                } else if(res.err_msg == "get_brand_wcpay_request:fail") {
                    Toast.fail("支付失败", 1.5);
                }
            }
        );
    }
    // 添加微信支付事件
    wxPay(data) {
        this.resp = data;
        if (typeof WeixinJSBridge == "undefined") {
            if (document.addEventListener) {
                document.removeEventListener("WeixinJSBridgeReady", this.onBridgeReady.bind(this));
                document.addEventListener('WeixinJSBridgeReady', this.onBridgeReady.bind(this), false);
            } else if (document.attachEvent) {
                document.detachEvent('WeixinJSBridgeReady', this.onBridgeReady.bind(this));
                document.detachEvent('onWeixinJSBridgeReady', this.onBridgeReady.bind(this));
                document.attachEvent('WeixinJSBridgeReady', this.onBridgeReady.bind(this));
                document.attachEvent('onWeixinJSBridgeReady', this.onBridgeReady.bind(this));
            }
        } else {
            this.onBridgeReady();
        }
    }
    render(){
        let {
            index,          //当前选择的支付方式
            price1,         //商品rmb价格
            price3,         //商品赏金价格
            accountReamin   //赏金余额
        } = this.state;
        let wechatClass = className({
            "circle-icon": true,
            "active": index == 0
        });
        let remainClass = className({
            "circle-icon": true,
            "active": index == 1
        });
        return (
            <div class="pay-wrap box">
                <NormalHeader title="支付"/>
                <List renderHeader={() => '商品金额'}>
                    {price1 ? <Item extra={`¥${Util.formatMoney(price1)}`}>RMB</Item> : ""}
                    {price3 ? <Item extra={Util.formatMoney(price3)}>赏金</Item> : ""}
                </List>
                <List renderHeader={() => '支付方式'}>
                    <Item
                     thumb={wechatIcon}
                     extra={<div class={wechatClass}></div>}
                     onClick={this.handleChange.bind(this, 0)}
                   >微信支付<Brief></Brief></Item>
                   <Item
                    thumb={remainIcon}
                    extra={<div class={remainClass}></div>}
                    onClick={this.handleChange.bind(this, 1)}
                  >余额支付<Brief></Brief></Item>
                </List>
                {/* <List renderHeader={() => '账户余额'}>
                    <Item extra={Util.formatMoney(accountReamin)}>赏金</Item>
                </List> */}
                <div class="bottom-button"><Button onClick={this.handleClick.bind(this)} type="primary">支付</Button></div>
            </div>
        );
    }
}
