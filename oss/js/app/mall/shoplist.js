$(function() {
    var userId = getUserId();

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
        search: true
    },
    {
        field: 'owner',
        title: '负责人',
        type: 'select',
        listCode: '805055',
        params: {

            kind: "f2"
        },
        keyName: "userId",
        valueName: 'loginName',
        search: true
    },
    {
        field: 'type',
        title: '商店类别',
        type: 'select',
      listCode: '808007',

        keyName: "code",
        valueName: 'name',
        search: true,
    },
    {
        field: 'bookMobile',
        title: '联系电话',
    },
    {
        title: "状态",
        field: 'status',
        type: 'select',
        key: 'store_status',
        formatter: Dict.getNameForList("store_status"),
        search: true

    },
    {
        title: "推荐状态",
        field: 'isDefault',
        type: 'select',
        key: 'store_default_status',
        formatter: Dict.getNameForList("store_default_status"),
        search: true

    },
     {
        title: "备注",
        field: "remark"
    }];
    buildList({
        columns: columns,
        pageCode: "808215",


    });
    $('#edit2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status != 2) {
            window.location.href = "shoplist_addedit.html?code=" + selRecords[0].code;

        } else {
            toastr.info("该店铺已上架，不可修改");
            return;
        }
    });
    $('#tuijianBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 2) {
          confirm("确认推荐该店铺？").then(function() {
              reqApi({
                  code: '808209',
                  json: { "storeCode": selRecords[0].code ,"isDefault":'1'}
              }).then(function() {
                  toastr.info("操作成功");
                  $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

              });
          });

        } else {
            toastr.info("该店铺未上架，不能推荐");
            return;
        }
    });  $('#butuijianBtn').click(function() {
          var selRecords = $('#tableList').bootstrapTable('getSelections')
          if (selRecords.length <= 0) {
              toastr.info("请选择记录");
              return;
          }

            confirm("确认不再推荐该店铺？").then(function() {
                reqApi({
                    code: '808209',
                    json: { "storeCode": selRecords[0].code ,"isDefault":'0'}
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

                });
            });

      });
    $('#upBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 2) {
            toastr.info("该店铺不是待上架状态");
            return;
        }
        confirm("确认上架该店铺？").then(function() {
            reqApi({
                code: '808204',
                json: { "code": selRecords[0].code }
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
        if (selRecords[0].status == 1 || selRecords[0].status == 4) {
            toastr.info("该店铺不是待下架的状态");
            return;
        }
        confirm("确认下架该店铺？").then(function() {
            reqApi({
                code: '808205',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });

            });
        });
    });
})
