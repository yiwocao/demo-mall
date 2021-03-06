import React, {Component} from 'react';
import {Flex} from 'antd-mobile';
import {Link} from 'react-router';

const readIcon = require('../../../../../images/浏览数@2x.png');
const Util = require('../../../../util/util');

export default class PostItem extends Component {
    // 图片onload
    handleOnLoad(e){
        let {width, height} = e.target;
        if(width <= height){
            e.target.className = "wp100";
        }else{
            e.target.className = "hp100";
        }
    }
    render() {
        let {imgUrl, title, publishDatetime, code, totalReadTimes} = this.props;
        return (
            <li>
                <Link to={`/mall/list?code=${code}`}>
                    <Flex>
                        {imgUrl.length
                            ? <div className="new-listPic">
                                <img
                                    onLoad={this.handleOnLoad.bind(this)}
                                    src={Util.formatTitleThumbanailImg(imgUrl)} alt=""/>
                            </div>
                            : ""
                        }
                        <Flex.Item>
                            <Flex direction="column" align="start" justify="between">
                                <p className="new-listTopic twoline-ellipsis">{title}</p>
                                <div className="new-listSee"><span>{totalReadTimes}</span></div>
                            </Flex>
                        </Flex.Item>
                    </Flex>
                </Link>
            </li>
        )
    }
}
