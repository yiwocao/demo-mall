$(function() {


    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
        search: true
    }, {
        field: 'amountMin',
        title: '积分下',
        formatter: moneyFormat
    }, {
        field: 'amountMax',
        title: '积分上',
        formatter: moneyFormat
    }, {
        field: 'effect',
        title: '是否审核',
        formatter: Dict.getNameForList('true_false'),
        type: 'select',
        key: 'true_false'
    }, {
        field: 'updater',
        title: '最近修改人'
    }, {
        field: 'updateDatetime',
        title: '最近修改时间',
        formatter: dateTimeFormat
    }, {
        field: 'remark',
        title: '备注'
    }];
    buildList({
        router: "level",
        columns: columns,
        pageCode: "805113"
    });
})