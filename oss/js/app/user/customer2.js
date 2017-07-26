$(function() {

    var columns = [{
            field: '',
            title: '',
            checkbox: true
        }, {
            field: 'loginName',
            title: '用户名',
            search: true
        }, {
            field: 'nickname',
            title: '昵称',
            search: true
        }, {
            field: 'mobile',
            title: '手机号',
            search: true
        },
        //  {
        //     field: 'email',
        //     title: '邮箱',
        // formatter: function(v, data) {
        //     return data.userExt.email;
        // }
        // }, 
        {
            field: 'status',
            title: '状态',
            type: 'select',
            key: 'user_status',
            search: true,
            formatter: Dict.getNameForList('user_status')
        }, {
            field: 'level',
            title: '用户组',
            type: 'select',
            listCode: "805113",
            params: {
                start: 0,
                limit: 10000
            },
            keyName: "code",
            valueName: "name"
        },
        //  {
        //     field: 'amount',
        //     title: '积分',
        //     formatter: moneyFormat
        // }, 
        {
            field: 'remark',
            title: '备注'
        }
    ];

    buildList({
        router: 'customer2',
        columns: columns,
        pageCode: '805054',
        searchParams: {
            companyCode: getCityId(getUserId()),
            kind: "f1"
        },

    });

    $('#lockBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 2) {
            toastr.info("该账户已被注销");
            return;
        }
        var status = selRecords[0].status,
            toStatus;
        status == 0 ? toStatus = 2 : toStatus = 0;
        confirm("确定注销该账户？").then(function() {
            reqApi({
                code: '805052',
                json: {
                    userId: selRecords[0].userId,
                    toStatus: toStatus
                }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });

        });
    });
    $('#activeBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 0) {
            toastr.info("该账户是已正常状态");
            return;
        }
        confirm("确定激活该账户？").then(function() {
            reqApi({
                code: '805052',
                json: {
                    userId: selRecords[0].userId,
                    toStatus: '0'
                }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });

        });
    });
    $("#edit2Btn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        window.location.href = "customer_addedit.html?code=" + selRecords[0].userId;
    });
    $("#detail2Btn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        window.location.href = "customer_detail.html?userId=" + selRecords[0].userId;
    });
    $("#add2Btn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');

        window.location.href = "customer2_addedit.html";
    });
    $("#accountBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        window.location.href = "account.html?userId=" + selRecords[0].userId;
    });


});