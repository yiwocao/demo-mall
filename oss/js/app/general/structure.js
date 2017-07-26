$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
    }, {
        field: 'status',
        title: '状态',
        type: "select",
        key: 'stru_status',
        formatter: Dict.getNameForList('stru_status'),
    }, {
        field: 'updater',
        title: '贡献人',
    }, {
        field: 'updateDatetime',
        title: '贡献时间',
        formatter: dateFormat,
    }, {
        field: 'remark',
        title: '备注',
    }];

    buildList({
        router: 'structure',
        columns: columns,
        pageCode: ' '
    });
});