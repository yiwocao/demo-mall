$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        title: '产生项',
        field: 'type',
        type: 'select',
        formatter: Dict.getNameForList('rule_type'),
        key: 'rule_type',
        search: true
    }, {
        field: 'value',
        title: '权重',
        formatter: moneyFormat
    }, {
        field: 'level',
        title: '作用等级',
        search: true,
        type: 'select',
        listCode: '805113',
        params: {
            start: 1,
            limit: 10000
        },
        keyName: "code",
        valueName: "name",
        // defaultOption: 'All'
        //Value: '0'
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
        router: "score",
        columns: columns,
        pageCode: "807725",
        searchParams: {
            kind: "1"
        }
    });
});