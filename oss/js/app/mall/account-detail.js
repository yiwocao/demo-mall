$(function() {

    var companyCode = getCityId(getUserId());

    var columns = [{
        field: 'realName',
        title: '用户名',
        search: true,
    }, {
        field: 'accountNumber',
        title: '账号',
    },
    {
        field: 'bizType',
        title: '支付渠道',
        type: 'select',
                formatter: Dict.getNameForList('biz_type'),
          search: true,
          key: 'biz_type'

    },{
        field: 'transAmount',
        title: '金额',
        formatter: moneyFormat
    },  {
        field: 'code',
        title: '流水号',
        search: true,
    },  {
        field: 'createDatetime',
        title: '创建时间',
        formatter: dateTimeFormat,
    } ];
    buildList({
        columns: columns,
        pageCode: "802520",
        searchParams: {
            'accountType': '',

            start: '0',limit:'10',

        },
    });

  //  $("#cashBtn").click(function() {
    //    window.location.href = "account_cash2.html?v=1";
  //  });

})
