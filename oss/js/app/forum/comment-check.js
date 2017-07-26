$(function() {

    var code = getQueryString('code');


    var fields = [{
            title: '针对帖子',
            field: 'parentCode',
            readonly: true,
            formatter: function(v, r) {
                if (r.post) {
                    return   text3dot(r.post.title || r.post.content, 10);
                } else {
                    // return '评论：' + text3dot(r.post.content, 10);
                }
            }
        },
        //  {
        //     title: '内容',
        //     field: 'content',
        //     readonly: true
        // }, 
        {
            title: '评论人',
            field: 'nickname',
            readonly: true
        }, {
            title: "评论内容",
            field: "content",
            readonly: true
        }, {
            title: '评论时间',
            field: 'commDatetime',
            readonly: true,
            formatter: dateTimeFormat
        },  {
            title: '评论状态',
            field: 'status',
            readonly: true,
            type: 'select',
            key: 'comment_status'
        }, {
            title:"举报次数",
            field:"reportNum",
            readonly: true,
        },{
            title: '举报信息',
            field: 'postTalkList',
            type: 'o2m',
            editTable: true,
            addeditTable: true,
            readonly: true,
            columns: [ {
                field: 'nickname',
                title: '举报人'
            }, {
                field: 'remark',
                title: '举报内容'
            },{
                title:"举报时间",
                field:"talkDatetime",
                formatter:dateTimeFormat
            }]
        }, {
            title: '意见说明',
            field: 'approveNote',
            maxlength: 250
        }];

    var options = {
        fields: fields,
        code: code,
        detailCode: '610203'
    };

    options.buttons = [{
        title: '通过',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = {};
                data['codeList'] = [code];
                data['approver'] = sessionStorage.getItem('userName');
                data["approveResult"] = "1";
                data["type"] = "2";
                data["approveNote"] = $("#approveNote").val();
                reqApi({
                    code: "610114",
                    json: data
                }).done(function() {
                    sucDetail();
                });
            }
        }
    }, {
        title: '不通过',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = {};
                data['codeList'] = [code];
                data['approver'] = sessionStorage.getItem('userName');
                data["approveResult"] = "0";
                data["type"] = "2";
                data["approveNote"] = $("#approveNote").val();
                reqApi({
                    code: "610114",
                    json: data
                }).done(function() {
                    sucDetail();
                });
            }
        }
    }, {
        title: '返回',
        handler: function() {
            goBack();
        }
    }];

    buildDetail(options);

});