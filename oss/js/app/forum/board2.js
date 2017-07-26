$(function() {

    //var branch = getQueryString('b') || "";
    var cityId = getCityId(getUserId());

    var columns = [{
            field: '',
            title: '',
            checkbox: true
        }, {
            field: 'name',
            title: '名称',
            search: true
        }, {
            title: "版主",
            field: "nickname",
        }, {
            field: 'bplateCode',
            title: '大板块',
            listCode: '610027',
            type: 'select',
            keyName: 'code',
            valueName: 'name'
        }, {
            field: "orderNo",
            title: '次序',
        }, {
            title: '状态',
            field: 'status',
            type: 'select',
            key: 'active_status',
            formatter: Dict.getNameForList('active_status'),
        }, {
        field: 'isDefault',
        title: '默认',
        type: "select",
        formatter: Dict.getNameForList('true_false'),
        search: true,
        key: 'true_false'
        },
        // {
        //     title: '备注',
        //     field: 'remark',
        // }
    ];

    buildList({
        router: 'board2',
        columns: columns,
        pageCode: '610045',
        deleteCode: "610041",
        searchParams: {
            'companyCode': cityId
        },
        // urlParams: {
        //     b: branch
        // }
    });

    $('#defaultBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        var msg = selRecords[0].isDefault == 0 ? "是否设为默认？" : "是否取消默认设置？"
        confirm(msg).then(function() {
            reqApi({
                code: '610044',
                json: { "code": selRecords[0].code}
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });
    });
});