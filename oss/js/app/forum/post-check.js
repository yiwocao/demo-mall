$(function() {

    var code = getQueryString('code');


    var fields = [{
        field: 'plateCode',
        title: '版块',
        type: 'select',
        listCode: '',
        // url: $('#basePath').val() + '/forum/board/list?siteCode=' + getCityId(getUserId()),
        keyName: 'code',
        valueName: 'name',
        readonly: true
    }, {
        title: '标题',
        field: 'title',
        readonly: true
    }, {
        title: '内容',
        field: 'content',
        readonly: true
    }, {
        title: '图片',
        field: 'picArr',
        readonly: true,
        type: 'img'
    }, {
        title: '发帖人',
        field: 'nickname',
        readonly: true
    }, {
        title: '发帖时间',
        field: 'publishDatetime',
        readonly: true,
        formatter: dateTimeFormat
    }, {
        title: '状态',
        field: 'status',
        readonly: true,
        type: 'select',
        key: 'post_status'
    }, {
        field: 'remark',
        title: '备注',
        readonly: true
    }, {
        title: '意见说明',
        field: 'approveNote',
        value: '',
        required: true,
        maxlength: 250
    }];

    var options = {
        fields: fields,
        code: code,
        detailCode: ' '
    };

    options.buttons = [{
        title: '通过',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = {};
                data['code'] = code;
                data['approver'] = sessionStorage.getItem('userName');
                data["approveResult"] = "1";
                data["type"] = "2";
                data["approveNote"] = $("#approveNote").val();
                reqApi({
                    code: " ",
                    json: data
                }).done(function() {
                    sucDetail();
                });
            }
        }
    }, {
        title: '删除',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = {};
                data['code'] = code;
                data['approver'] = sessionStorage.getItem('userName');
                data["approveResult"] = "0";
                data["type"] = "2";
                data["approveNote"] = $("#approveNote").val();
                reqApi({
                    code: "",
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