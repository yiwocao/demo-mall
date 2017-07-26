$(function() {
    var cityId = getCityId(getUserId()) ? getCityId(getUserId()) : '0';

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
        search: true
    }, {
        field: 'type',
        title: '商品类别',
        type: 'select',
        listCode: '808007',
        keyName: "code",
        valueName: "name",
        params: {
            companyCode: getCityId(getUserId())
        },
        search: true,
    }, {
        field: 'price1',
        title: '商品积分价格',
        formatter: moneyFormat
    }, {
        field: 'status',
        title: '状态',
        type: "select",
        formatter: Dict.getNameForList('prod_status'),
        search: true,
        key: 'prod_status',
    }, {
        title: "备注",
        field: "remark"
    }];
    buildList({
        router: "product",
        columns: columns,
        searchParams: {
            'companyCode': cityId
        },
        pageCode: "808025",
    });
    $('#edit2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status != 3) {
            window.location.href = "product_addedit.html?code=" + selRecords[0].code;

        } else {
            toastr.info("该商品已上架，不可修改");
            return;
        }
    });
    $('#upBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 1 || selRecords[0].status == 4) {
            window.location.href = "product_detail.html?code=" + selRecords[0].code;

        } else {
            toastr.info("该商品不是待上架的状态");
            return;
        }
    });
    $('#downBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status != 3) {
            toastr.info("该商品不是待下架的状态");
            return;
        }
        confirm("确认下架该商品？").then(function() {
            reqApi({
                code: '808014',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

            });
        });
    });
    $('#delete2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 3) {
            toastr.info("该商品已上架，不可删除");
            return;
        }
        confirm("确认删除该商品？").then(function() {
            reqApi({
                code: '808011',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

            });
        });
    });
})