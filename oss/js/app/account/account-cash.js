$(function() {
    var userId = getUserId();

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'code',
        title: '申请编号',
    }, {
        field: 'realName',
        title: '账户',
    }, {
        field: 'transAmount',
        title: '提现金额',
        formatter: function (v, data) {
            v = Math.abs(v);
            return moneyFormat(v);
        }
    }, {
        field: 'createDatetime',
        title: '申请时间',
        formatter: dateTimeFormat,
    }, {
        field: 'status',
        title: '状态',
        key: 'approval_status',
        formatter: Dict.getNameForList('approval_status'),
    }, {
        field: 'postAmount',
        title: '余额',
        formatter: moneyFormat,
    }];
    buildList({
        router: 'account_cash',
        columns: columns,
        searchParams: {
            'bizType': -11,
        },
        pageCode: "802520",
    });

    $("#approvalBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status != "0") {
            toastr.info("该条记录不是待审批状态");
            return;
        }
        location.href = "./account_cash_check.html?code=" + selRecords[0].code;
    });

})
