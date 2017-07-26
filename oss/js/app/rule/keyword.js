$(function() {


    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'word',
        title: '关键字',
        search: true
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
        router: "keyword",
        columns: columns,
        pageCode: "610005",
        deleteCode: "610001",
    });
});