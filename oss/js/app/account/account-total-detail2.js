$(function() {
    var accountNumber = getQueryString("accountNumber");
    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'realName',
        title: '户名'
    }, {
        field: 'payGroup',
        title: '订单编号',
        search: true
    }, {
        field: 'channelOrder',
        title: '支付编号',
        search: true
    }, {
        field: 'currency',
        title: '币种',
        type: 'select',
        data: {
            "CNY": '人民币'
        }
    }, {
        field: 'channelType',
        title: '渠道',
        type: 'select',
        data: {
            "35": '微信公众号支付'
        }
    }, {
        field: 'bizType',
        title: '业务类型',
        type: 'select',
        data: {
            "GW": "活动购买",
            "-GW": "活动购买退款",
            "-11": "取现"
        },
        search: true
    }, {
        field: 'transAmount',
        title: '变动金额',
        formatter: moneyFormat
    }, {
        field: 'preAmount',
        title: '变动前金额',
        formatter: moneyFormat
    }, {
        field: 'postAmount',
        title: '变动后金额',
        formatter: moneyFormat
    }, {
        field: 'status',
        title: '状态',
        type: 'select',
        key: 'jour_status',
        formatter: Dict.getNameForList('jour_status'),
        search: true
    }, {
        field: 'remark',
        title: '备注'
    }];
    buildList({
        columns: columns,
        pageCode: "802520",
        searchParams: {
            'accountType': 'PA',
            'currency': 'CNY',
            'status': 1,
            'accountNumber': accountNumber
        }
    });
    $("#flowBtn").remove();
});
