import React, {Component} from 'react';
import {hashHistory} from 'react-router';
import {Toast, Modal} from 'antd-mobile';
import ShowPic from '../components/ShowPic';
import {UserCtr} from '../controller/UserCtr';
import {MenuCtr} from '../controller/MenuCtr';
import initReactFastclick from 'react-fastclick';

initReactFastclick();

const Emoji = require('../components/IMChat/emoji');
const Util = require('../util/util');
const IMUtil = require('../components/IMChat/IMUtil');

const loadingIcon = require('../../images/loading.png');

WebIM.Emoji = Emoji;

export const globalInfo = {
    user: {
        userId: "",
        nickname: "",
        userExt: {
            photo: ""
        }
    },
    cache: {}
};

export default class App extends Component {
    constructor() {
        super();
        /*
         * chatRoomData : {
         *      userId: {
         *           noReadCount: 1,            //总的未读消息数
         *           msgs: {                    //消息列表
         *               "chatUserId": {        //和谁聊天
                            noReadCount: 1,     //和这个人的未读消息数
                            photo: "",          //chatUserId的头像
                            msg: [{             //消息列表
         *                      from: userId,   //发消息者
         *                      to: toUserId,   //接收者
         *                      sendByMe: true, //是否是自己发送的
         *                      value: "",      //消息内容
         *                      error: "",      //错误信息
         *                      errorText: "",  //错误信息
         *                      ext: {nickname: "", photo: ""}, //发送者的信息
         *                      type: 'txt'                     //消息类型
         *                  }]
                        }
         *          },
         *      }
         * }
         */
        this.state = {
            chatRoomData: Util.getChatRoomData(), //聊天内容
            menuData: [], //菜单信息
            showModal: false, //是否显示微信初始化失败的modal
            showCarousel: 0, //是否显示图片查看的carousel
            slideIndex: 0, //图片的carousel当前查看的图片下标
            picArr: [], //图片的carousel的图片数组
        };
    }
    
    componentDidMount() {
        let {code, state} = this.props.location.query;
        let rUrl = "";
        if (/\/\?rUrl=([^&#]+)/.exec(location.href)) { //如果是外链子系统第一次调csw的登录页面
            rUrl = RegExp.$1;
            let flag = false;
            if (/&pay=1/.test(location.href)) {
                flag = true;
            }
            Util.setOutLoginUrl(rUrl, flag);
            location.href = `?s/#/user/login?rUrl=${rUrl}`;
            return;
        } else if (/rUrl=([^&#]+)/.exec(location.href)) { //保存外链子系统的回调url
            rUrl = `&rUrl=${RegExp.$1}`;
        }
        if (/mobile=(\d+)&sms=(\d+)&rUrl=[^&]+&code=([^&]+)&state/.exec(location.href)) {
            location.href = `?s/#/user/redirect?code=${RegExp.$3}&sms=${RegExp.$2}&mobile=${RegExp.$1}${rUrl}`;
            return;
        } else if (/mobile=(\d+)&sms=(\d+)\/&code=([^&]+)&state/.exec(location.href)) {
            location.href = `?s/#/user/redirect?code=${RegExp.$3}&sms=${RegExp.$2}&mobile=${RegExp.$1}`;
            return;
        } else if (/code=([^&]+)&state=.+/.exec(location.href)) {
            location.href = `?s/#/user/redirect?code=${RegExp.$1}${rUrl}`;
            return;
        }
        if(/\/#\//.test(location.href)){
            if (!/\?s\/(#\/[\s\S]+)/.test(location.href)) {
                let result = /\/(#\/[\s\S]+)/.exec(location.href);
                let redirectUrl = result[1];
                if (location.replace) {
                    location.replace(location.origin + "?s" + redirectUrl);
                } else {
                    location.href = location.origin + "?s" + redirectUrl;
                }
            }
        }

        // 若已经登录则获取用户详情
        let userId = Util.getUserId();
        if (userId && !globalInfo.user.userId) {
            UserCtr.getUserInfo()
                .then((data) => {
                    globalInfo.user = data;
                }).catch(() => {});
        }
    }
    componentWillUnmount() {
        const {chatRoomData} = this.state;
        this.saveChatInfo(chatRoomData);
        clearInterval(this.timeout);
    }
    // 获取菜单列表
    getMenuList(company, initConn = true) {
        return MenuCtr.getMenuList(company.code, true)
            .then((data) => {
                Util.hideLoading();
                this.updateMenu(data);
                this.initConnection();
            });
    }
    // 根据公司编号获取company
    getCompanyByCode(code) {
        return UserCtr.getCompanyByCode(code)
            .then((data) => {
                Util.setCompany(data);
                return data;
            });
    }
    // 根据公司地址获取company
    getCompanyByAddr(addr, saveComp = true) {
        return UserCtr.getCompanyByAddr({
            province: addr.province,
            city: addr.city,
            area: addr.area
        }).then((data) => {
            if (saveComp) {
                Util.setCompany(data);
            }
            return data;
        });
    }
    
    // 初始化环信
    initConnection() {
        window.ChatGlobalInfo = {};
        window.ChatGlobalInfo.conn = new WebIM.connection({
            isMultiLoginSessions: WebIM.config.isMultiLoginSessions,
            https: WebIM.config.https,
            url: WebIM.config.xmppURL,
            heartBeatWait: WebIM.config.heartBeatWait,
            autoReconnectNumMax: WebIM.config.autoReconnectNumMax,
            autoReconnectInterval: WebIM.config.autoReconnectInterval,
            apiUrl: WebIM.config.apiURL,
            isHttpDNS: WebIM.config.isHttpDNS,
            isWindowSDK: WebIM.config.isWindowSDK,
            isAutoLogin: WebIM.config.isAutoLogin
        });
        this.listenConn();
        let username = Util.getUserId();
        username && IMUtil.login(username).catch(() => {});
    }
    // 给环信的conn添加监听事件
    listenConn() {
        ChatGlobalInfo.conn.listen({
            onOpened: (message) => { //连接成功回调
                // 如果isAutoLogin设置为false，那么必须手动设置上线，否则无法收消息
                // 手动上线指的是调用conn.setPresence(); 如果conn初始化时已将isAutoLogin设置为true
                // 则无需调用conn.setPresence();
            },
            onClosed: (message) => {
                if (this.isInChatRoom()) {
                    Toast.info("环信断开连接", 1);
                }
            }, //连接关闭回调
            onTextMessage: (message) => {
                this.appendMsg(message, 'txt');
            }, //收到文本消息
            onEmojiMessage: (message) => {
                this.appendMsg(message, 'emoji');
            }, //收到表情消息
            onOnline: () => {}, //本机网络连接成功
            onOffline: () => {
                if (this.isInChatRoom()) {
                    Toast.info("环信断开连接", 1);
                }
            }, //本机网络掉线
            onError: () => {
                if (this.isInChatRoom()) {
                    Toast.info("环信断开连接", 1);
                }
            }, //失败回调
        });
    }
    // 发送消息
    sendTextMsg(content, toUser, nickname, photo) {
        IMUtil.sendTextMsg(content, toUser, nickname, photo)
            .then((msg) => {
                this.appendMsg(msg, 'txt');
            }).catch(() => {
                Toast.fail("消息发送失败", 1);
            });
    }
    // 判断当前页面收到的消息是否是为未读消息
    isInChatRoom() {
        return /^\/user\/chatRoom/.test(this.props.location.pathname);
    }
    // 保存消息到本地
    saveMsg(msg) {
        let {
            chatRoomData
        } = this.state, //  保存到localStorage里到所有聊天数据
            ownerId = globalInfo.user.userId, //  保存这条消息到key
            toUserId = msg.sendByMe ? msg.to : msg.from;
        if (!chatRoomData[ownerId])
            chatRoomData[ownerId] = {
                noReadCount: 0,
                msg: {}
            };
        if (!chatRoomData[ownerId].msg[toUserId])
            chatRoomData[ownerId].msg[toUserId] = {
                noReadCount: 0,
                photo: "",
                msg: []
            };
        chatRoomData[ownerId].msg[toUserId].msg.push(msg);
        if(!chatRoomData[ownerId].msg[toUserId].photo){
            for(let i = chatRoomData[ownerId].msg[toUserId].msg.length; i;){
                if(chatRoomData[ownerId].msg[toUserId].msg[--i].from == toUserId){
                    chatRoomData[ownerId].msg[toUserId].photo =
                        Util.formatListThumbanailAvatar(chatRoomData[ownerId].msg[toUserId].msg[i].ext.photo);
                    break;
                }
            }
        }
        if (!this.isInChatRoom()) {
            chatRoomData[ownerId].noReadCount++; //  未读消息数加1
            chatRoomData[ownerId].msg[toUserId].noReadCount++;
        }
        this.setState({
            chatRoomData: chatRoomData
        });
        this.saveChatInfo(chatRoomData);
    }
    // 发送消息或接收到消息后，把消息添加到本地
    appendMsg(msg, type) {
        if (!msg) return;
        msg.from = (msg.from || globalInfo.user.userId).toUpperCase();
        msg.to = (msg.to || msg.body.to).toUpperCase();
        let brief = '',
            data = msg.data || msg.msg //接收到消息后的内容位置
            || msg.body.data || msg.body.msg || ''; //发出的消息的内容位置
        brief = IMUtil.getBrief(data, type);
        switch (type) {
            case 'txt':
                this.saveMsg({
                    from: msg.from,
                    to: msg.to,
                    sendByMe: msg.from === globalInfo.user.userId,
                    value: brief,
                    error: msg.error,
                    errorText: msg.errorText,
                    ext: msg.ext || msg.body.ext,
                    type: 'txt',
                    id: msg.id
                });
                break;
            case 'emoji':
                this.saveMsg({
                    from: msg.from,
                    to: msg.to,
                    sendByMe: msg.from === globalInfo.user.userId,
                    value: brief,
                    error: msg.error,
                    errorText: msg.errorText,
                    ext: msg.ext || msg.body.ext,
                    type: 'emoji',
                    id: msg.id
                });
                break;
            default:
                break;
        }
    }
    // 保存消息到本地
    saveChatInfo(chatRoomData) {
        Util.saveChatRoomData(chatRoomData);
    }
    updateChatInfo(chatRoomData) {
        this.setState({
            chatRoomData: chatRoomData
        });
        this.saveChatInfo(chatRoomData);
    }
    updateMenu(menuData) {
        menuData = Util.bubbleSort(menuData, "orderNo");
        this.setState({
            menuData
        });
    }
    // 隐藏modal
    onClose() {
        this.setState({
            showModal: false,
        });
    }
    // 显示modal
    showTipModal() {
        this.setState({
            showModal: true,
        });
    }
    // 隐藏弹出的carousel
    hideCarousel() {
        this.setState({
            showCarousel: 0
        });
    }
    // 显示carousel
    showCarousel(picArr, slideIndex) {
        this.setState({
            showCarousel: 1,
            picArr,
            slideIndex
        });
    }
    // 生成子元素，并传入相关参数
    renderChildren() {
        //遍历所有子组件
        return React.Children.map(this.props.children, child => {
            return React.cloneElement(child, {
                //把父组件的props赋值给每个子组件
                chatRoomData: this.state.chatRoomData,
                menuData: this.state.menuData,
                updateMenu: this.updateMenu.bind(this),
                showCarousel: this.showCarousel.bind(this),
                sendTextMsg: this.sendTextMsg.bind(this),
                updateChatInfo: this.updateChatInfo.bind(this)
            })
        })
    }
    render() {
        let {
            showCarousel,
            slideIndex,
            picArr,
        } = this.state;
        return (
            <div>
                <Modal
                  title="提示"
                  transparent
                  maskClosable={false}
                  visible={this.state.showModal}
                  onClose={this.onClose.bind(this)}
                  footer={[{ text: '确定', onPress: () => { this.onClose(); } }]}
                >
                  微信sdk初始化失败，这将影响帖子的微信分享功能。<br />
                  如果想正常使用这些功能，可以尝试刷新页面。<br />
                </Modal>
                <div>{this.renderChildren()}</div>
                {
                    showCarousel
                        ? <ShowPic hideCarousel={this.hideCarousel.bind(this)} slideIndex={slideIndex} carouselData={picArr}/>
                        : ""
                }
            </div>
        )
    }
}
