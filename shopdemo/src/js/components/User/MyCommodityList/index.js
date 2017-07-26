import React, {Component} from 'react';
import {Link} from 'react-router';
import NormalHeader from '../../../components/NormalHeader';
import CommodityOrderItem from './CommodityOrderItem';
import Tloader from 'react-touch-loader';
import {Tabs} from 'antd-mobile';
import {GeneralCtr} from '../../../controller/GeneralCtr';
import './index.scss';

const TabPane = Tabs.TabPane;

export default class MyCommodityList extends Component {
    render() {
        return (
            <div class="box order-list-wrap">
                <NormalHeader title="我的物品"/>
                <Tabs class="tloaderDiv flex-column" defaultActiveKey="0" animated={false}>
                    <TabPane tab="待上架" key="0">
                        <CommodityOrderItem status={1}/>
                    </TabPane>
                    <TabPane tab="已上架" key="1">
                        <CommodityOrderItem status={3}/>
                    </TabPane>
                    <TabPane tab="已下架" key="2">
                        <CommodityOrderItem status={4}/>
                    </TabPane>
                </Tabs>

            </div>
        );
    }
}
