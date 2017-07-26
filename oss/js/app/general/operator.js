$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'userId',
        title: '用户编号',

    }, {
        field: 'mobile',
        title: '手机号',
    }, {
        field: 'realName',
        title: '真实姓名'
    }, {
        field: 'level',
        title: '操盘手等级',
        type: 'select',
        key: "operator_level",
        formatter: Dict.getNameForList('operator_level'),
    }, {
        field: 'updater',
        title: '更新人',
    }, {
        field: 'updateDatetime',
        title: '更新时间',
        formatter: dateTimeFormat,
    }, {
        field: 'remark',
        title: '备注',
    }];
    buildList({
        router: 'operator',
        columns: columns,
        pageCode: ''
    });
});