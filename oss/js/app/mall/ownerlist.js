$(function() {
    var userId = getUserId();

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    },
    {    field:'loginName',
        title: '负责人',
    },


    {
        field: 'mobile',
        title: '联系电话',
    }, {
        title: "备注",
        field: "remark"
    }];
    buildList({
        columns: columns,

        searchParams: {
            'kind': 'f2',
        },
              pageCode: "805054",
    });

})
