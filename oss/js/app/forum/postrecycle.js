$(function() {



    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'title',
        title: '标题',
        search: true
    }, {
        field: 'nickname',
        title: '发帖人'
    }, {
        field: 'publishDatetime',
        title: '发布时间',
        formatter: dateTimeFormat
    }, {
        field: 'remark',
        title: '备注'
    }];
    buildList({
        router: 'postrecycle',
        columns: columns,
        pageCode: '610200',
        searchParams: {
            companyCode: getCityId(getUserId()),
            status: 'E'
        },
        singleSelect: false
    });

    $('#restoreBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        var data = {};
        data.codeList = [];
        selRecords.forEach(function(item) {
            data.codeList.push(item.code);
        });
        // data['approver'] = sessionStorage.getItem('userName');
        // data["approveResult"] = "1";
        data["type"] = '1';

        confirm("确定还原帖子？").then(function() {
            reqApi({
                code: '610115',
                json: data
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });
    });
    $('#fdeleteBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        var codeList = [];
        selRecords.forEach(function(item) {
            codeList.push(item.code);
        });
        var data = { codeList: codeList, type: '1', userId: getUserId() };
        confirm("确认删除该记录？").then(function() {
            reqApi({
                code: '610116',
                json: data
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });
    });

});