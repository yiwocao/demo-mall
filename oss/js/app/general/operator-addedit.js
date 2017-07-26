$(function() {
    var code = getQueryString('code');
    var view = getQueryString('v');

    var fields = [{
        field: 'userId',
        title: '用户编号',
        required: true,
        readonly: view
    }, {
        field: 'mobile',
        title: '手机号',
        required: true,
        readonly: view
    }, {
        field: 'realName',
        title: '真实姓名',
        required: true,
        readonly: view
    }, {
        field: 'level',
        title: '操盘手等级',
        type: 'select',
        key: "operator_level",
        formatter: Dict.getNameForList('operator_level'),
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
        view: view,
        addCode: " ",
        detailCode: ' ',
        editCode: ' '
    });
});