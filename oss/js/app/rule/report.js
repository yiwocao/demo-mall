$(function() {



    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'value',
        title: '次数'
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
        // key: "effect_level",
        // formatter: Dict.getNameForList('effect_level'),
        // keyName: 'code',
        // valueName: 'name',
        // defaultOption: 'All'
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
        router: "report",
        columns: columns,
        pageCode: "807725",
        searchParams: {
            kind: "2"
        }
    });
})