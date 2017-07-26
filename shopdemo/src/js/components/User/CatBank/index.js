import React, {Component} from 'react';
import {Link} from 'react-router';
import {List, InputItem, Button, Picker, DatePicker, TextareaItem, Toast} from 'antd-mobile';
import {createForm} from 'rc-form';
import EditInfoHeader from './EditInfoHeader';
import ReactQiniu from '../../Qiniu';
import moment from 'moment';
import 'moment/locale/zh-cn';
import zhCN from 'antd-mobile/lib/date-picker/locale/zh_CN';
import './index.scss';
import {globalInfo} from '../../../containers/App';
import {GeneralCtr} from '../../../controller/GeneralCtr';
import {UserCtr} from '../../../controller/UserCtr';

const Util = require('../../../util/util');
const minDate = moment('1900-01-01 +0800', 'YYYY-MM-DD').utcOffset(8);
const genderData = [
    {
        label: '中国农业银行',
        value: '中国农业银行'
    }, {
        label: '中国建设银行',
        value: '中国建设银行'
    }, {
        label: '中国银行',
        value: '中国银行'
    }, {
        label: '中国交通银行',
        value: '中国交通银行'
    }, {
        label: '平安银行',
        value: '平安银行'
    }, {
        label: '兴业银行',
        value: '兴业银行'
    }
];
const genderData1 = [
    {
        label: '中国农业银行',
        value: 'ABC'
    }, {
        label: '中国建设银行',
        value: 'CCB'
    }, {
        label: '中国银行',
        value: 'BOC'
    }, {
        label: '中国交通银行',
        value: 'BCM'
    }, {
        label: '平安银行',
        value: 'PAB'
    }, {
        label: '兴业银行',
        value: 'CIB'
    }
];
const rightIcon = require('../../../../images/_pic.png');
const zhNow = moment().locale('zh-cn').utcOffset(8);
const maxFileSize = 1024 * 1024 * 10;   // 10M

class EditUserInfo extends Component {
    constructor(){
        super();
        this.state = {
            file: "",
            token: '',
            user: {
                userExt: {
                    birthday: moment().utcOffset(8)
                }
            },
            bank:{}
        }
    }
    componentDidMount(){
        if(!Util.isLogin()){
            Util.goLogin();
            return;
        }
        //Util.showLoading();
        Promise.all([
            this.getQiniuToken(),
            this.getUserInfo(),
            this.getbank()
        ]).then(()=>{
            Util.hideLoading();
        }).catch(() => {});
        
    }
    // 获取七牛token
    getQiniuToken(){
        return GeneralCtr.getQiniuToken()
            .then((data) => {
                this.setState({token: data.uploadToken});
            });
    }
    // 获取用户详情
    getUserInfo(){
        if(!globalInfo.user.userId)
            return UserCtr.getUserInfo(true)
                .then((data) => {
                    globalInfo.user = data;
                    let photo = data.userExt.photo, file = "";
                    if(photo){
                        file = {
                            preview: Util.formatUserCenter(data.userExt.photo),
                            key: data.userExt.photo,
                            status: 200
                        }
                    }
                    if(data.userExt.birthday){
                        data.userExt.birthday = moment(data.userExt.birthday, "YYYY-MM-DD").utcOffset(8);
                    }
                    this.setState({user: data, file: file});
                });
        else
            return new Promise((resolve) => {
                if(globalInfo.user.userExt.birthday){
                    globalInfo.user.userExt.birthday = moment(globalInfo.user.userExt.birthday, "YYYY-MM-DD").utcOffset(8);
                }
                let photo = globalInfo.user.userExt.photo, file = "";
                if(photo){
                    file = {
                        preview: Util.formatUserCenter(globalInfo.user.userExt.photo),
                        key: globalInfo.user.userExt.photo,
                        status: 200
                    }
                }
                this.setState({user: globalInfo.user, file: file});
                resolve();
            });
    }
    getbank(){
            return UserCtr.getbank(true)
                .then((data) => {
                this.setState({bank: data[0]});
                
            });
    }
    // 保存用户信息
    saveInfo() {
        this.props.form.validateFields((error, param) => {
            if(!error){
                let {file} = this.state;
                if(file.key && file.status != 200){
                    Toast.info("头像还未上传完成", 1.5);
                    return;
                }
                Util.showLoading("保存中...");
                this.saveExtInfo(param)
                    .then(() => {
                        Util.hideLoading();
                        Util.historyBack();
                    }).catch(() => {});
            }
        });
    }
    // 保存扩展信息
    saveExtInfo(param){
        let {file} = this.state;
        let photo = file.key;
        param.photo = photo;
        param.birthday = param.birthday && param.birthday.format("YYYY-MM-DD") || "";
        param.bankName = param.bankName[0];
        param.bankCode = param.bankCode[0];
        return UserCtr.saveBankInfo(param)
            .then((data) => {
                globalInfo.user.userExt.bankcardNumber = param.bankcardNumber;
                globalInfo.user.userExt.realName = param.realName;
                globalInfo.user.userExt.bankName = param.bankName;
                globalInfo.user.userExt.bankCode = param.bankCode;
            });
    }
    /*
     * 处理图片上传前的事件
     * @param file    上传图片
     */
    onUpload(file) {
        // set onprogress function before uploading
        file = file[0];
        if(file.size >= maxFileSize){
            return;
        }
        file.onprogress = (e) => {
            file.status = e.srcElement.status;
            this.setState({
                file: file
            });
        };
    }
    /*
     * 处理添加图片事件，把新加入的图片拼到state的files数组里
     * @param new_files    新加入的图片
     */
    onDrop(new_files) {
        let old_file = this.state.file,
            new_file = new_files[0];
        if(new_file.size >= maxFileSize){
            Toast.info('上传的文件大小超出了限制:10M');
            new_file = old_file;
        }
        this.setState({file: new_file});
    }
    /*
     * 处理图片上传错误事件
     * @param error 错误信息
     */
    onUploadError(error) {
        Toast.info(error.body.error, 1.5);
    }
    // textarea的focus事件
    AreaFocus(){
        const {getFieldInstance} = this.props.form;
        let _context = getFieldInstance("introduce");
        setTimeout(() => {
            _context.refs.textarea.scrollIntoView();
        }, 1);
    }
    // email的focus事件
    mailFocus(){
        const {getFieldInstance} = this.props.form;
        let _context = getFieldInstance("email");
        setTimeout(() => {
            _context.refs.input.scrollIntoView();
        }, 1);
    }
    
    //是否支持继续添加图片
    supportClick(){
        return true;
    }
    render() {
        let {getFieldProps, getFieldError} = this.props.form;
        let {file, token, user,bank} = this.state;
        const QiNiuOpt = {
            onDrop: this.onDrop.bind(this),
            token: this.state.token,
            multiple: false,
            uploadUrl: "http://up-z2.qiniu.com",
            onUpload: this.onUpload.bind(this),
            onError: this.onUploadError.bind(this),
            style: {
                height: '1.9rem',
                width: '100%',
                position: 'relative'
            },
            multiple: false,
            supportClick: this.supportClick.bind(this),
            accept: "image/*"
        };
        let bankcardNumberError,nicknameError, emailError, birthdayError, genderError;
        let birthday = user.userExt.birthday && moment(user.userExt.birthday).utcOffset(8) || zhNow;
        return (
            <div class="box">
                <EditInfoHeader title="银行" saveInfo={this.saveInfo.bind(this)}/>
                <div class="edit-user-info-wrap border-box tloaderDiv">
                    <List class="bg_fff">
                        <List.Item>
                            <InputItem {...getFieldProps('realName', {
                                rules: [{
                                    required: true,
                                    message: "不能为空"
                                }],
                                initialValue: [user.loginName || ""],
                            })} placeholder="姓名">姓名</InputItem>
                            {(nicknameError = getFieldError('realName'))
                                ? <span class="comment-error-tip">{nicknameError.join(',')}</span>
                                : null}
                        </List.Item>
                        <List.Item>
                            <InputItem {...getFieldProps('bankcardNumber', {
                                initialValue: [bank.bankcardNumber || ""],
                                rules: [{
                                    required: true,
                                    message: "不能为空"
                                }],
                                
                            })} placeholder="卡号">卡号</InputItem>
                            {(bankcardNumberError = getFieldError('bankcardNumber'))
                                ? <span class="comment-error-tip">{bankcardNumberError.join(',')}</span>
                                : null}
                        </List.Item>
                        <Picker data={genderData} cols={1} {...getFieldProps('bankName', {
                            initialValue: [bank.bankName || ""],
                            rules: [{
                                required: true,
                                message: "不能为空"
                            }]
                            
                        })} className="forss">
                            <List.Item arrow="horizontal">银行名称
                                {(genderError = getFieldError('bankName'))
                                    ? <span class="comment-error-tip more-right-error">{genderError.join(',')}</span>
                                    : null}
                            </List.Item>
                        </Picker>
                                       
                    </List>
                    
                </div>
            </div>
        );
    }
}
export default createForm()(EditUserInfo);
