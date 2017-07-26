$(function() {
    var code = getQueryString('code');
    var view = getQueryString('v');

    var fields = [{
        field: 'name',
        title: '名称',
        required: true,
        readonly: view
    }, {
        field: 'status',
        title: '状态',
        type: "select",
        key: "stru_status",
        formatter: Dict.getNameForList('stru_status'),
        required: true,
        readonly: view
    }, {
        field: 'remark',
        title: '备注',
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