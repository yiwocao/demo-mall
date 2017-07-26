$(function() {
    var view = getQueryString('v');
    var code = getQueryString('code');


    var fields = [{
        hidden: true,
        field: "userId",
        defaultValue: code || ""
    }, {
        title: '归属',
        field: 'companyCode',
        pageCode: "806013",
        keyName: 'code',
        valueName: 'name',
        searchName: "name",
        type: 'select',
        required: true,
        readonly: view
    }, {
        title: '手机号',
        field: 'mobile',
        required: !code,
        mobile: true,
        hidden: code,
        readonly: view
    }];
    buildDetail({
        fields: fields,
        code: {
            userId: code
        },
        view: view,
        detailCode: '805056',
        editCode: '805200',
        addCode: '805079'
    });

});