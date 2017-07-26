$(function() {

    var code = getQueryString('code');
    var view = getQueryString('v');

    var fields = [{
        field: 'userId',
        type: 'hidden',
        value: getUserId()
    }, {
        field: 'currency',
        type: 'hidden',
        value: 'CNY'
    }, {
        field: 'type',
        type: 'hidden',
        value: 'B'
    }, {
        field: 'realName',
        title: '开户名称',
        required: true,
        readonly: view
    }, {
        field: 'bankCode',
        title: '开户行',
        type: "select",
        listCode: '802116',
        params: {
            updater: ""
        },
        keyName: "bankCode",
        valueName: "bankName",
        required: true,
        readonly: view
    }, {
        field: 'subbranch',
        title: '开户支行',
        required: true,
        readonly: view
    }, {
        field: 'bankcardNumber',
        title: '账号',
        required: true,
        readonly: view
    }, {
        field: 'bindMobile',
        title: '绑定手机号',
        mobile: true,
        required: true,
        readonly: view
    }, {
        field: 'remark',
        title: '备注',
        readonly: view
    }];

    buildDetail({
        fields: fields,
        code: code,
        detailCode: '802017',
        editCode: '802012',
        addCode: '802010',
        beforeSubmit: function(data) {
            data.bankName = $("#bankCode").find("option:selected").text();
            return data;
        }

    });

});
