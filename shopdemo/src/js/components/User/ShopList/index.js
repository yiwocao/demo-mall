import React, {Component} from 'react';
import {Link} from 'react-router';
import {Flex, Toast} from 'antd-mobile';
import Tloader from 'react-touch-loader';
import NormalHeader from '../../NormalHeader';
import { Modal, Button, WhiteSpace, WingBlank} from 'antd-mobile';
import {ActivityCtr} from '../../../controller/ActivityCtr';
import {Dict} from '../../../util/dict';
import './index.scss';

const Util = require('../../../util/util.js');
const Ajax = require('../../../util/ajax.js');
//const OrderStatus = Dict["orderStatus"];
const ShopStatus = Dict["shopStatus"];
const alert = Modal.alert;



export default class ShopList extends Component {
    constructor(){
        super();
        this.state = {
            orders: null,
            start: 1,
            limit: 10,
            hasMore: 0,
            initializing: 1,
            refreshedAt: Date.now(),
        };
    }
    componentDidMount(){
        Util.showLoading();
        this.getPageShop(true)
            .then(() => {
                this.setState({initializing: 2});
                Util.hideLoading();
            })
            .catch(() => {});
    }
    // 分页获取订单
    getPageShop(refresh){
        let {start, limit} = this.state;
        start = refresh && 1 || start;
        return ActivityCtr.getPageShop({
            start,
            limit,
            storeCode:this.props.location.query.code,
        }, refresh).then((data) => {
            let hasMore = data.list.length >= limit || 0;
            let {orders} = this.state;
            orders = refresh && [] || orders;
            orders = [].concat.call(orders, data.list);
            hasMore && start++;
            this.setState({hasMore, start, orders});
        });
    }
    // 加载更多订单
    handleLoadMore(resolve) {
        this.getPageShop().then(resolve).catch(resolve);
    }
    // 刷新数据
    handleRefresh(resolve) {
        this.getPageShop(true).then(resolve).catch(resolve);
    }
    down(order){
        Ajax.post("808014", {
                    code: order.code,
                    updater:Util.getUserId()
                }).then(() => {
                    let {orders} = this.state;
                    for(let i = 0; i < orders.length; i++){
                        if(orders[i].code == order.code){
                            orders[i].status = 4;
                            break;
                        }
                    }
                    this.setState({orders});
                }).catch(() => {});
    }
    up(order){
        Ajax.post("808013", {
                    code: order.code,
                    updater:Util.getUserId()
                }).then(() => {
                    let {orders} = this.state;
                    for(let i = 0; i < orders.length; i++){
                        if(orders[i].code == order.code){
                            orders[i].status = 3;
                            break;
                        }
                    }
                    this.setState({orders});
                }).catch(() => {});
    }
    pay(order){
        Util.goPath(`/actPay/${order.code}`);
    }
    getOrderItem(order, key){
        return (
            <div class="p30 orders-item" key={key}>
                
                    <Flex>
                        <div class="order-act-item-img-wrap">
                            <img onLoad={Util.handleOnLoad} src={Util.formatTitleThumbanailImg(order.pic)}/>
                        </div>
                        <Flex.Item>
                            <Flex className="order-cont-flex" direction="column" justify="between" align="start">
                                <Flex.Item className="wp100">
                                    <Flex align="start">
                                        <div class="order-act-title twoline-ellipsis">{order.name}</div>
                                        <Flex.Item className="order-act-status"><span>{ShopStatus[order.status]}</span></Flex.Item>
                                    </Flex>
                                </Flex.Item>
                                <div class="order-act-date">
                                    
                                    <span class="fr order-act-amount">¥{Util.formatMoney(order.price1)}</span>
                                </div>
                            </Flex>
                        </Flex.Item>
                    </Flex>
                
                        <div className="order-item-foot">
                        <div className="order-item-foot-item" onClick={this.up.bind(this, order)}>上架</div>
                        <div className="order-item-foot-item" onClick={this.down.bind(this, order)} >下架</div>
                        </div>


            </div>
        )
    }
    render() {
        let {initializing, hasMore, orders} = this.state;
        return (
            <div class="box order-list-container">
                <NormalHeader title="商品"/>

                <Tloader initializing={initializing} onRefresh={this.handleRefresh.bind(this)} hasMore={hasMore} onLoadMore={this.handleLoadMore.bind(this)} autoLoadMore={true}>
                    {
                        orders && orders.length
                            ? orders.map((order, index) => this.getOrderItem(order, order.code))
                            : Util.noData("暂无活动订单")
                    }
                </Tloader>
            </div>
        )
    }
}
