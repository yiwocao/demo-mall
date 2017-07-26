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
            
        }
    }
    componentDidMount(){
        this.getUserInfo();
    }
    handleChangeMoney(val){
        this.setState({val});
    }
    handleClick(e){
        e.stopPropagation();
        e.preventDefault();
        let amount = Util.formatMoneyLarge(this.state.val);
        this.payMoney(amount);
    }
    payMoney(amount){
        MallCtr.payMoney(amount)
            .then((data) => {
                Util.goPath('/user');
            }).catch(() => {});
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
                <NormalHeader title="提现"/>
                <List renderHeader={() => '提现金额'}>
                    <InputItem onChange={this.handleChangeMoney.bind(this)}>提现金额</InputItem>
                </List>
                <div class="bottom-button"><Button onClick={this.handleClick.bind(this)} type="primary">提现</Button></div>
            </div>
        );
    }
}
