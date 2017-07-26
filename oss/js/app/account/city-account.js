$(function() {
    var userId = getUserId();

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'amount',
        title: '余额',
        formatter: moneyFormat
    }, {
        field: 'realName',
        title: '户名'
    }];
    buildList({
        columns: columns,
        searchParams: {
            'currency': 'CNY',
            'type': "PA"
        },
        pageCode: "802500",
    });

    $("#flowBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        window.location.href = "account_total_detail2.html?accountNumber=" + selRecords[0].accountNumber;
    });

})
