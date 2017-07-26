$(function() {
    var code = getQueryString('code');
    //var  view =getQueryString('v');

    var fields = [{
            field: 'title',
            title: '标题',
            readonly: true
        }, {
            field: 'plateCode',
            title: '版块',
            type: "select",
            pageCode: "610047",
            keyName: "code",
            valueName: "name",
            readonly: true
        }, {
            field: 'status',
            title: '状态',
            formatter: Dict.getNameForList('post_status'),
            readonly: true,
            key: 'post_status',
            data: { 'C1': '不信任待审批', 'C2': '被举报待审批' }
        }, {
            title: "内容",
            field: "content",
            type: "textarea",
            readonly: true

        },
        {
            title: "图片",
            field: "picArr",
            type: 'img',
            readonly: true
        },{
            field: 'publishDatetime',
            title: '发布时间',
            formatter: dateTimeFormat,
            readonly: true
        }, 
        {
            field: 'reportNum',
            title: '举报次数',
            readonly: true
        }, {
            title: '举报信息',
            field: 'likeList',
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
            title: "审核回复",
            field: "approveNote",
            maxlength: 255
          }];

    var options = {
        fields: fields,
        code: code,
        detailCode: '610201'
    };

    options.buttons = [{
        title: '通过',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = {};
                data['codeList'] = [code];
                data['approver'] = sessionStorage.getItem('userName');
                data["approveResult"] = "1";
                data["type"] = "1";
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
                data["type"] = "1";
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