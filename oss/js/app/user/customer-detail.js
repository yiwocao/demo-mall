$(function() {

    var code = getQueryString('userId');


    var fields = [{
            title: '归属',
            field: 'companyCode',
            pageCode: "806014",
            params: {
                start: 0,
                limit: 1000
            },
            keyName: 'code',
            valueName: 'name',
            type: 'select',
            readonly: true
        },
        // {
        //     title: '登录名',
        //     field: 'loginName',
        //     readonly: true
        // }, 
        {
            title: '昵称',
            field: 'nickname',
            readonly: true
        }, {
            title: '手机号',
            field: 'mobile',
            mobile: true,
            readonly: true
        }, {
            title: '状态',
            type: 'select',
            key: 'user_status',
            field: 'status',
            readonly: true
        }, {
            field: 'level',
            title: '用户组',
            pageCode: "805113",
            params: {
                start: 0,
                limit: 100
            },
            keyName: 'code',
            valueName: 'name',
            type: 'select',
            readonly: true
        },
        // {
        //     field: 'amount',
        //     title: '积分',
        //     formatter: moneyFormat,
        //     readonly: true
        // },
        {
            field: 'totalFansNum',
            title: '粉丝数',
            readonly: true
        }, {
            field: 'totalFollowNum',
            title: '关注数',
            readonly: true
        }, {
            field: 'remark',
            title: '备注',
            readonly: true
        }
    ];
    buildDetail({
        fields: fields,
        code: {
            userId: code
        },
        detailCode: '805056',
    });
    $("#subBtn").remove();

});