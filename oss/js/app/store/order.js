$(function() {

    var cityId = getCityId(getUserId()) ? getCityId(getUserId()) : '0';

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'code',
        title: '订单编号'
    }, {
        field: 'productName',
        title: '商品',
        formatter: function(v, data) {
            return data.productOrderList[0].product.name;
        }
    }, {
        title: "提货人",
        field: "applyUser",
        formatter: function(v, data) {
            return data.user.mobile
        }
    }, {
        field: 'status',
        title: '状态',
        formatter: Dict.getNameForList('order_status'),
        search: true,
        type: 'select',
        key: 'order_status'
    }, {
        field: 'applyDatetime',
        title: '下单时间',
        formatter: dateTimeFormat
    }, {
        field: 'remark',
        title: '备注'
    }];
    buildList({
        router: 'order',
        columns: columns,
        searchParams: {
            'companyCode': cityId,
            statusList: ['2', '4', '92']

        },
        pageCode: "808065",
    });

    $('#actionBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status != 2) {
            toastr.info("订单状态不是已支付");
            return;
        }
        window.location.href = "order_addedit.html?code=" + selRecords[0].code;
    });
})