$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'id',
        title: '模板编号',
    }, {
        field: 'title',
        title: '标题',
    }, {
        field: 'type',
        title: '类型',
        type: "select",
        key: "contract_template_type",
        formatter: Dict.getNameForList("contract_template_type"),

    }, {
        field: 'status',
        title: '状态',
        type: "select",
        key: "contract_template_status",
        formatter: Dict.getNameForList("contract_template_status"),
    }, {
        field: 'updater',
        title: '创建者',

    }, {
        field: 'updateDatetime',
        title: '创建时间',
    }, {
        field: 'remark',
        title: '备注',
    }];

    buildList({
        router: 'contract_template',
        columns: columns,
        pageCode: '',
        deleteCode: ''
    });
});