$(function() {

    var columns = [{
            field: '',
            title: '',
            checkbox: true
        }, {
            title: '名字',
            field: 'name',
            search: true
        },
        // {
        //     title: "父菜单",
        //     field: "parentCode",
        //     search: true
        // },
        {
            title: "状态",
            field: "status",
            type: 'select',
            key: 'move_status',
            formatter: Dict.getNameForList("move_status"),
            search: true
        },
        {
            title: "顺序",
            field: "orderNo",
        }, {
            title: "备注",
            field: "remark"
        }
        // {
        //     title: "属于",
        //     field: "",
        //     formatter: function(v, data) {

        //     }
        // }
    ];
    buildList({
        router: 'move',
        columns: columns,
        pageCode: '610055',
        deleteCode: '610051',
        searchParams: {
            companyCode: getCityId(getUserId())
        }

    });
    $('#upBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }

        if (selRecords[0].status == '2') {
            toastr.info('该记录不能进行该操作');
            return;
        }
        confirm('确定上架该视频？').then(function(d) {
            var data = $('#popForm').serializeObject();
            data["code"] = selRecords[0].code;
            data["orderNo"] = selRecords[0].orderNo;
            reqApi({
                code: '610053',
                json: data
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });

    });
    $('#downBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }

        if (selRecords[0].status != '2') {
            toastr.info('该记录不能进行该操作');
            return;
        }
        confirm("确定下架该视频？").then(function() {
            reqApi({
                code: '610054',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });

    });
    $('#delete2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }

        if (selRecords[0].status == '2') {
            toastr.info('该记录不能进行该操作');
            return;
        }
        confirm("确定删除该视频？").then(function() {
            reqApi({
                code: '610051',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });

    });
    $('#edit2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }

        if (selRecords[0].status == '2') {
            toastr.info('该记录不能进行该操作');
            return;
        }
        window.location.href = 'move_addedit.html?code=' + selRecords[0].code;

    });
});