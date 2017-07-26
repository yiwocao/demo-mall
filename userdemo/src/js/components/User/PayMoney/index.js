import React, {Component} from 'react';
import NormalHeader from '../../NormalHeader';
import {GeneralCtr} from '../../../controller/GeneralCtr';
import {MallCtr} from '../../../controller/MallCtr';
import {UserCtr} from '../../../controller/UserCtr';
import './index.scss';
import className from 'classnames';
import { List, Button, Toast ,InputItem} from 'antd-mobile';

const Util = require('../../../util/util');
const Item = List.Item;
const Brief = Item.Brief;
const wechatIcon = require('../../../../images/wechat.png');
const remainIcon = require('../../../../images/remain.png');
export default class AboutUs extends Component {
    constructor(){
        super();
        this.state = {
            index: 0,
        }
    }
    componentDidMount(){
        this.getUserInfo();
    }
    componentWillUnmount(){
        if (document.addEventListener) {
            document.removeEventListener("WeixinJSBridgeReady", this.onBridgeReady.bind(this));
        } else if (document.attachEvent) {
            document.detachEvent('WeixinJSBridgeReady', this.onBridgeReady.bind(this));
            document.detachEvent('onWeixinJSBridgeReady', this.onBridgeReady.bind(this));
        }
    }
    // 支付方式修改
    handleChange(index, e){
        e.stopPropagation();
        e.preventDefault();
        this.setState({index});
    }
    handleChangeMoney(val){
        this.setState({val});
    }
    handleClick(e){
        e.stopPropagation();
        e.preventDefault();
        let {index} = this.state;
        let amount = Util.formatMoneyLarge(this.state.val);
        let openId = this.state.user.openId;
        this.payMoney(index, amount,openId);
    }
    getUserInfo(){
        return UserCtr.getUserInfo()
            .then((user) => {
                this.setState({user});
            });
    }
    payMoney(index, amount,openId){
        Util.showLoading("支付中...");
        MallCtr.payMoney(openId, amount)
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
    render() {
        let {
            index,          
        } = this.state;
        let wechatClass = className({
            "circle-icon": true,
            "active": index == 0
        });
        return (
            <div class="pay-wrap box">
                <NormalHeader title="充值"/>
                <List renderHeader={() => '充值金额'}>
                    <InputItem onChange={this.handleChangeMoney.bind(this)}>充值金额</InputItem>
                </List>
                <List renderHeader={() => '支付方式'}>
                    <Item
                     thumb={wechatIcon}
                     extra={<div class={wechatClass}></div>}
                     onClick={this.handleChange.bind(this, 0)}
                   >微信支付<Brief>副标题</Brief></Item>
                </List> 
                <div class="bottom-button"><Button onClick={this.handleClick.bind(this)} type="primary">支付</Button></div>
            </div>
        );
    }
}
