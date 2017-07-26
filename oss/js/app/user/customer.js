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
            // data: {
            //     "0": "新手上路",
            //     "1": "新手上路",
            //     "2": "初级会员",
            //     "3": '中级会员',
            //     "4": "高级会员",
            //     "5": "金牌会员",
            //     "6": "论坛元老"
            // },
            listCode: "805113",
            params: {
                start: 0,
                limit: 100
            },
            keyName: "code",
            valueName: "name",
            formatter: function(v, data) {
                if (v == "1" || v == "0") {
                    return "1"
                } else {
                    return v
                }
            },
            search: true,

        }, {
            field: 'companyName1',
            title: '归属',
            type: "select",
            formatter: function(v, data) {
                if (data.companyCode == 'CD-CCSW000008') {
                    return '总部添加'
                } else {
                    return data.companyName
                }
            }
        }, {
            title: "归属",
            field: "companyCode",
            type: "select",
            listCode: "806013",
            keyName: 'code',
            valueName: 'name',
            searchName: "name",
            search: true,
            visible: false
        },
        // {
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
        router: 'customer',
        columns: columns,
        pageCode: '805054',
        searchParams: {
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
    $("#add2Btn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        window.location.href = "customer_addedit.html";
    });
    $("#detail2Btn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        window.location.href = "customer_detail.html?userId=" + selRecords[0].userId;
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