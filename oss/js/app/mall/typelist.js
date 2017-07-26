$(function() {
    var userId = getUserId();

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    },
    {    field:'name',
        title: '商店类别',
          search: true
    },
    {
        title: "状态",
        field: 'status',
        type: 'select',
        key: 'goods_status',
        formatter: Dict.getNameForList("goods_status"),
        search: true

    }

  ];
    buildList({
        columns: columns,
        searchParams: {
            'type': '2',
            'parentCode':'0',
        },
              pageCode: "808005",
    });
    $('#edit2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status != 1) {
            window.location.href = "typelist_addedit.html?code=" + selRecords[0].code;

        } else {
            toastr.info("该商店类别已上架，不可修改");
            return;
        }
    });
    $("#upBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 1) {
            toastr.info("该类别已上架");
            return;
        }
        confirm("确认上架该商店类别？").then(function() {
            reqApi({
                code: '808003',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

            });
        });
    });
    $("#downBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 1) {

            confirm("确认下架该商店类别？").then(function() {
                reqApi({
                    code: '808004',
                    json: { "code": selRecords[0].code }
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

                });
            });
        } else {
            toastr.info("该类别不是待下架的状态");
            return;
        }

    });
});
