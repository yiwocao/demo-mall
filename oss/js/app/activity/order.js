$(function() {

    var systemCode = getSystemId(getUserId());
    var userId = getUserId();
    var companyCode = getCityId(getUserId());

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'code',
        title: '订单编号',
    }, {
        field: 'productName',
        title: '名称',
        search: true,
    }, {
        field: 'mobile',
        title: '手机'
    }, {
        field: 'status',
        title: '状态',
        search: true,
        type: 'select',
        key: 'account_status',
        formatter: Dict.getNameForList('account_status'),

    }, {
        field: 'createDatetime',
        title: '下单时间',
        formatter: dateTimeFormat,
    }, {
        field: 'cancelDatetime',
        title: '退款时间',
        formatter: dateTimeFormat,
    }, {
        field: 'realName',
        title: '参与者',
        search: true,
    }, {
        field: 'payAmount',
        title: '明细',
        formatter: moneyFormat,
    }];
    buildList({
        columns: columns,
        searchParams: {
            'systemCode': systemCode,
            'companyCode': companyCode
        },
        pageCode: "660025"
    });


    $("#refundBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 3) {
            toastr.info("该订单已退款");
            return;
        }
        confirm("确认该订单退款？").then(function() {
            reqApi({
                code: '660022',
                json: {
                    "orderCode": selRecords[0].code
                }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', {
                    url: $('#tableList').bootstrapTable('getOptions').url
                });

            });
        });
    });

})
