import React, {Component} from 'react';
import {Link} from 'react-router';
import {Flex, Toast} from 'antd-mobile';
import Tloader from 'react-touch-loader';
import NormalHeader from '../../NormalHeader';
import { Modal, Button, WhiteSpace, WingBlank} from 'antd-mobile';
import {ActivityCtr} from '../../../controller/ActivityCtr';
import {PostCtr} from '../../../controller/PostCtr';
import {Dict} from '../../../util/dict';
import './index.scss';

const Util = require('../../../util/util.js');
const Ajax = require('../../../util/ajax.js');
const GetStatus = Dict["getStatus"];
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
            refreshedAt: Date.now()
        };
    }
    componentDidMount(){
        this.getPageGet(true)
            .then(() => {
                this.setState({initializing: 2});
                Util.hideLoading();
            })
            .catch(() => {});

    }
    // 分页获取订单
    getPageGet(refresh){
        let {start, limit} = this.state;
        start = refresh && 1 || start;
        return ActivityCtr.getPageGet({
            start,
            limit
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
        this.getPageGet().then(resolve).catch(resolve);
    }
    // 刷新数据
    handleRefresh(resolve) {
        this.getPageGet(true).then(resolve).catch(resolve);
    }
    cancel(order){
        Ajax.post("808053", {
                    code: order.code,
                    userId:Util.getUserId()
                }).then(() => {
                    let {orders} = this.state;
                    for(let i = 0; i < orders.length; i++){
                        if(orders[i].code == order.code){
                            orders[i].status = 91;
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

                        <Flex.Item>
                            <Flex className="order-cont-flex" direction="column" justify="between" align="start">
                                <Flex.Item className="wp100">
                                    <Flex align="start">
                                        <div class="order-act-title twoline-ellipsis">{order.productOrderList[0].product.name}</div>
                                        <Flex.Item className="order-act-status"><span>{GetStatus[order.status]}</span></Flex.Item>
                                    </Flex>
                                </Flex.Item>
                                <div class="order-act-date">
                                    {(order.user.nickname)}
                                    <span class="fr order-act-amount">¥{Util.formatMoney(order.amount1)}</span>
                                </div>
                            </Flex>
                        </Flex.Item>
                    </Flex>
                
                {
                    order.status == 1
                        ?<div className="order-item-foot">
                        <div className="order-item-foot-item" onClick={this.cancel.bind(this, order)} >取消</div>
                        </div>
                        : null

                }
            </div>
        )
    }
    render() {
        let {initializing, hasMore, orders} = this.state;
        return (
            <div class="box order-list-container">
                <NormalHeader title="订单"/>

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
