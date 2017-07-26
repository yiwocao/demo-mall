$(function() {
    var userId = getUserId();

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'code',
        title: '订单列表编号',
       }, {
        field: 'accountName',
        title: '用户名',
    },
    {
        field: 'payCardNo',
        title: '银行卡号',
    },
    {
        field: 'amount',
        title: '提现金额',
      formatter: function (v, data) {
          v = Math.abs(v);
           return moneyFormat(v);
        }
    }, {
        field: 'applyDatetime',
        title: '申请时间',
        formatter: dateTimeFormat,
    }, {
        field: 'status',
        title: '状态',
        key: 'withdraw_status',
        formatter: Dict.getNameForList('withdraw_status'),
    }];
    buildList({
        router: 'account_cash',
        columns: columns,
        searchParams: {
            'bizType': -11,
        },

        pageCode: "802755",
    });

    $("#approvalBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status != "1") {
            toastr.info("该条记录不是待审批状态");
            return;
        }
        location.href = "./account_cash_check.html?code=" + selRecords[0].code;
    });
    $('#payBtn').click(function() {
          var selRecords = $('#tableList').bootstrapTable('getSelections')
          if (selRecords.length <= 0) {
              toastr.info("请选择记录");
              return;
          }
          if (selRecords[0].status != "3") {
              toastr.info("该条记录未审批成功");
              return;
          }
            confirm("确认支付？").then(function() {
                reqApi({
                    code: '802753',
                    json: { "codeList": [selRecords[0].code],"payUser":'admin',"payResult":'1',"payNote":'通过'}
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

                });
            });

      });
})
