$(function() {

    var companyCode = getCityId(getUserId());

    var columns = [{
        field: 'realName',
        title: '参与人',
        search: true,
    }, {
        field: 'payGroup',
        title: '订单编号',
        search: true,
    }, {
        field: 'productName',
        title: '活动名称'
    }, {
        field: 'totalAmount',
        title: '活动费用',
        formatter: moneyFormat,

    }, {
        field: 'createDatetime',
        title: '创建时间',
        formatter: dateTimeFormat,
    } ];
    buildList({
        columns: columns,
        pageCode: "660025",
        searchParams: {
            companyCode: companyCode,
            statusList: ["1", "2"]
        }
    });

    $("#cashBtn").click(function() {
        window.location.href = "account_cash2.html?v=1";
    });

})
