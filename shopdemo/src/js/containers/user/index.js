import React, {Component} from 'react';
import {Link} from 'react-router';
import NormalHeader from '../../components/NormalHeader';
import Nav from '../../components/Nav';
import Tloader from 'react-touch-loader';
import {globalInfo} from '../../containers/App';
import {Badge} from 'antd-mobile';
import {GeneralCtr} from '../../controller/GeneralCtr';
import {PostCtr} from '../../controller/PostCtr';
import {UserCtr} from '../../controller/UserCtr';
import {MenuCtr} from '../../controller/MenuCtr';
import './index.scss';

const Util = require('../../util/util');

const rightIcon = require('../../../images/_pic.png');

export default class User extends Component {
    constructor() {
        super();
        this.state = {
            initializing: 1,
            refreshedAt: Date.now(),
            totalPost: 0,               //  帖子总数
            amount: 0,                  //  赏金总数
            user: {
                userExt: {}
            },
            userRank: "",               //  用户等级
            isBlockManager: 0
        }
    }
    componentDidMount(){
        if(!Util.isLogin()){
            Util.goLogin();
            return;
        }
        Promise.all([
            this.init(),
        ]).then(() => {
            this.setState({initializing: 2});
            Util.hideLoading();
        }).catch(() => {});      
    }
    init(){
        return Promise.all([
            this.getUserInfo(),
            this.getAccount(),
            this.getShopId()
        ]);
    }
    // 获取用户详情
    getUserInfo(){
        return UserCtr.getUserInfo()
            .then((data) => {
                this.setState({user: data});
                globalInfo.user = data;
                return data;
            });
    }
    getShopId(){
        return PostCtr.getShopId()
        .then((data) => {
                this.setState({
                    storeCode: data[0].store.code,
                    blockData: data
                }); 
                return data;
            });
    }
    // 获取账户信息
    getAccount(){
        return UserCtr.getAccount(true)
            .then((data) => {
                for(let i = 0; i < data.length; i++){
                    if(data[i].currency == "CNY"){
                        this.setState({amount: data[i].amount});
                        break;
                    }
                }
            });
    }
    // 刷新页面
    handleRefresh(resolve) {
        this.init(true).then(resolve).catch(resolve);
    }
    // 进入我的活动页面
    goMyActivity(e){
        e.stopPropagation();
        e.preventDefault();
        Util.goPath('/orders');
        // location.href = ACTIVITY_URL + '?comp=' + Util.getCompany().code + '&tk=' + localStorage["token"] + '#/orders';
    }
    render(){
        let {initializing, totalPost, user, amount, isBlockManager,storeCode, userRank} = this.state;
        let noReadCount = 0;
        if(Util.isLogin()){
            let chatRoomData = this.props.chatRoomData || {};
            let userId = Util.getUserId();
            noReadCount = chatRoomData[userId] && chatRoomData[userId].noReadCount || 0;
        }
        return (
            <div class="box">
                <NormalHeader hideBack={true} title='我的'/>
                <Tloader initializing={initializing} onRefresh={this.handleRefresh.bind(this)} className="tloader headline">
                    <div class="mine-detail">
                        <div class="mine-detail-header">
                            <div class="picDetail">
                                <Link to={`/user/${localStorage["userId"]}`}>
                                    <div class="pic_detail">
                                        <div class="pic">
                                            <img src={Util.formatUserCenter(user.userExt.photo)} alt=""/>
                                        </div>
                                        <div class="picName">
                                            <p class="username">{user.nickname}</p>
                                            <p class="userRank">{userRank}</p>
                                        </div>
                                    </div>
                                    <img class="_pic" src={rightIcon} alt=""/>
                                </Link>
                            </div>
                            <div class="mine-detail-header-num">
                                <ul>
                                    <li><Link to='/user/reward'><div>{amount ? Util.formatMoney(amount) : 0}</div><p>金额</p></Link></li>
                                </ul>
                            </div>
                        </div>
                        <div class="mine-detail-content">
                            <ul>
                                <li><Link to={`/user/editBank`}>
                                    <div class="aboutCity"></div>
                                    <span class="mine-detail-span">绑定银行卡</span>
                                    <img src={rightIcon} alt=""/>
                                </Link></li>
                                <li><Link to={`/user/CatBank`}>
                                    <div class="aboutCity"></div>
                                    <span class="mine-detail-span">我的银行卡</span>
                                    <img src={rightIcon} alt=""/>
                                </Link></li>
                                <li><Link to={`/user/paymoney`}>
                                    <div class="aboutCity"></div>
                                    <span class="mine-detail-span">我的提现</span>
                                    <img src={rightIcon} alt=""/>
                                </Link></li>
                                <li><Link to={`/user/shoplist?code=${storeCode}`}>
                                    <div class="aboutCity"></div>
                                    <span class="mine-detail-span">我的商品</span>
                                    <img src={rightIcon} alt=""/>
                                </Link></li>
                                <li><Link to={`/user/takelist`}>
                                    <div class="aboutCity"></div>
                                    <span class="mine-detail-span">我的取现</span>
                                    <img src={rightIcon} alt=""/>
                                </Link></li>
                                <li><Link to={`/user/getlist`}>
                                    <div class="aboutCity"></div>
                                    <span class="mine-detail-span">我的订单</span>
                                    <img src={rightIcon} alt=""/>
                                </Link></li>
                                <li><Link to={`/user/setting`}>
                                    <div class="set"></div>
                                    <span class="mine-detail-span">设置</span>
                                    <img src={rightIcon} alt=""/>
                                </Link></li>
                            </ul>
                        </div>
                    </div>
                </Tloader>
                <div>
                
                </div>
            </div>
        );
    }
}
