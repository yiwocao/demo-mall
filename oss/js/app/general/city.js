$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
        search: true
    }, {
        field: 'userId',
        title: '负责人',
        type: 'select',
        listCode: '805054',
        params: {
            updater: '',
            start: 1,
            limit: 100,
            kind: "01"
        },
        keyName: "userId",
        valueName: 'loginName',
        //search: true
    }, {
        field: 'isDefault',
        title: '默认',
        type: "select",
        formatter: Dict.getNameForList('true_false'),
        search: true,
        key: 'true_false'
    }, {
        field: 'status',
        title: '是否上架',
        type: 'select',
        data: {
            "1": "待上架",
            "2": "上架",
            "3": "下架"
        }
    }, {
        title: '次序',
        field: 'orderNo'
    }, {
        field: 'remark',
        title: '服务时间'
    }];
    buildList({
        columns: columns,
        pageCode: "806014",
        deleteCode: '806001',
        beforeEdit: function(data){
            if(data.status == "2"){
                toastr.warning("上架城市不能修改");
                return false;
            }
            return true;
        }
    });

    $('#defaultBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        var msg = selRecords[0].isDefault == 0 ? "是否设为默认？" : "是否取消默认设置？"
        confirm(msg).then(function() {
            reqApi({
                code: '806003',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });
    });
    $("#upOrDownBtn").click(function(){
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        var msg = "";
        if(selRecords[0].status == "1" || selRecords[0].status == "3"){
            msg = "确认上架该城市？";
        }else{
            msg = "确认下架该城市？";
        }
        confirm(msg).then(function() {
            reqApi({
                code: '806018',
                json: { "code": selRecords[0].code }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });
    });

});
