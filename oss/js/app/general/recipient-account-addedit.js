$(function() {
    var code = getQueryString('code');
    var view = getQueryString('v');

    var fields = [{
        field: 'companyCode',
        title: '开户公司 ',
        required: true,
        readonly: view
    }, {
        field: 'subbranch',
        title: '开户银行',
        required: true,
        readonly: view
    }, {
        field: 'cardNo',
        title: '账号',
        required: true,
        readonly: view
    }, {
        field: 'status',
        title: '状态',
        type: "select",
        key: "account-status",
        formatter: Dict.getNameForList('account-status'),
        required: true,
        readonly: view
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        addCode: " ",
        detailCode: ' ',
        editCode: ' '
    });
});