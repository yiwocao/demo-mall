$(function() {
    var userId = getQueryString('userId');

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'accountNumber',
        title: '账户',
        // search: true
    }, {
        title: "积分",
        field: 'amount',
        formatter: moneyFormat
    }];
    buildList({

        columns: columns,
        pageCode: "802503",
        searchParams: {
            currency: "JF",
            userId: userId
        }
    });
    $("#add2Btn").remove();
    $("#addBtn").remove();
    $("#lockBtn").remove();
    $("#activeBtn").remove();
    $("#detail2Btn").remove();
    $("#edit2Btn").remove();
    $("#accountBtn").remove();
    $("#backBtn").click(function() {
        goBack();
    })
});