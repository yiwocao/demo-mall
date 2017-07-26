$(function() {
    var view = getQueryString('v');
    var code = getQueryString('code');

    var fields = [{
        field: 'id',
        title: '模板编号',
        required: true,
        readonly: view
    }, {
        field: 'title',
        title: '标题',
        required: true,
        readonly: view
    }, {
        field: 'type',
        title: '类型',
        required: true,
        readonly: view
        type: "select",
        key: "contract_template_type",
        formatter: Dict.getNameForList("contract_template_type"),

    }, {
        field: 'status',
        title: '状态',
        type: "select",
        required: true,
        readonly: view
        key: "contract_template_status",
        formatter: Dict.getNameForList("contract_template_status"),
    }, {
        field: 'remark',
        title: '备注',
        maxlength: 250,
        required: true,
        readonly: view
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        detailCode: ' ',
        addCode: ' ',
        editCode: ' '
    });

});