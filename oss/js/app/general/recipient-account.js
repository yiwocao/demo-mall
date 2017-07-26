$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'companyCode',
        title: '开户公司 ',
    }, {
        field: 'subbranch',
        title: '开户银行',
    }, {
        field: 'cardNo',
        title: '账号',
    }, {
        field: 'status',
        title: '状态',
        type: "select",
        key: "account-status",
        formatter: Dict.getNameForList('account-status'),
    }];
    buildList({
        router: 'recipient_account',
        columns: columns,
        pageCode: ''
    });
});