$(function() {
    var locationDict = Dict.getNameForList("post_location");
    var userId = getUserId();

    var columns = [{
            field: '',
            title: '',
            checkbox: true
        }, {
            field: 'title',
            title: '标题',
            search: true
        }, {
            field: 'plateName',
            title: '版块'
        }, {
            field: 'status',
            title: '状态',
            formatter: Dict.getNameForList('post_status'),
            search: true,
            key: 'post_status'
        }, {
            field: 'isLock',
            title: '是否锁帖',
            type: 'select',
            data: {
                "1": "锁帖",
                "0": "正常帖"
            },
            search: true
        }, {
            field: 'location',
            title: '位置',
            formatter: Dict.getNameForList('post_location'),
            //search: true,
            key: 'post_location',
            formatter: function(data) {
                var arr = data.split(/,/),
                    str = "";
                for (var i = 0; i < arr.length; i++) {
                    str += locationDict(arr[i]) + "、";
                }
                return i && str.substr(0, str.length - 1) || "";
            }

        },
        {
            field: 'nickname',
            title: '发帖人'
        }, {
            field: 'publishDatetime',
            title: '发布时间',
            formatter: dateTimeFormat
        }
    ];

    buildList({
        router: 'post',
        columns: columns,

        pageCode: "610200",
        searchParams: {
            companyCode: getCityId(userId),
            orderColumn:"publish_datetime",
            orderDir:"desc",
        },
        singleSelect: false

    });
    $('#topBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        if (selRecords[0].status == 'A') {
            toastr.info('该记录不能进行该操作');
            return;
        }

        if (/A/.test(selRecords[0].location)) {
            confirm("确定取消置顶？").then(function() {
                var location = selRecords[0].location;
                if (location.length == 1) {
                    location = "D";
                } else {
                    location = location.replace(/(,A)|(A,)/, "");
                }
                reqApi({
                    code: '610117',
                    json: { "code": selRecords[0].code, location: location, orderNo: selRecords[0].orderNo }
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                });
            });
        } else {
            confirm('确认置顶该帖子？').then(function(d) {
                var data = $('#popForm').serializeObject();
                data['code'] = selRecords[0].code;
                var location = selRecords[0].location;
                if (location == "D") {
                    location = "A"
                } else {
                    location += ",A";
                }
                data['location'] = location;
                reqApi({
                    code: '610117',
                    json: data
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                });
            });
        }
    });
    $('#digestBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        if (selRecords[0].status == 'A') {
            toastr.info('该记录不能进行该操作');
            return;
        }

        if (/B/.test(selRecords[0].location)) {
            confirm("确定取消精华？").then(function() {
                var location = selRecords[0].location;
                if (location.length == 1) {
                    location = "D";
                } else {
                    location = location.replace(/(,B)|(B,)/, "");
                }
                reqApi({
                    code: '610117',
                    json: { "code": selRecords[0].code, location: location, orderNo: selRecords[0].orderNo }
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                });
            });
        } else {
            confirm('确认将该帖子设为精华？').then(function(d) {
                var data = $('#popForm').serializeObject();
                //d.close().remove();
                data['code'] = selRecords[0].code;
                var location = selRecords[0].location;
                if (location == "D") {
                    location = "B"
                } else {
                    location += ",B";
                }
                data['location'] = location;
                reqApi({
                    code: '610117',
                    json: data
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                });
            });

        }
    });
    $('#headlineBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        if (selRecords[0].status == 'A') {
            toastr.info('该记录不能进行该操作');
            return;
        }
        if (/C/.test(selRecords[0].location)) {
            confirm("确定取消头条？").then(function() {
                var location = selRecords[0].location;
                if (location.length == 1) {
                    location = "D";
                } else {
                    location = location.replace(/(,C)|(C,)/, "");
                }
                reqApi({
                    code: '610117',
                    json: { "code": selRecords[0].code, location: location, orderNo: selRecords[0].orderNo }
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                });
            });
        } else {
            confirm('确定设置该帖子为头条？').then(function(d) {
                var data = $('#popForm').serializeObject();
                //d.close().remove();
                data['code'] = selRecords[0].code;
                var location = selRecords[0].location;
                if (location == "D") {
                    location = "C"
                } else {
                    location += ",C";
                }
                data['location'] = location;
                reqApi({
                    code: '610117',
                    json: data
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                });
            });

        }
    });

    $('#lockBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        if (selRecords[0].status == 'A') {
            toastr.info('该记录不能进行该操作');
            return;
        }
        var msg = selRecords[0].isLock == 1 ? "确定取消锁帖？" : "确定锁帖？";
        var codeList = [selRecords[0].code];

        confirm(msg).then(function() {
            reqApi({
                code: '610119',
                json: { codeList: codeList }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
            });
        });
    });
    $('#changeBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        if (selRecords[0].status == 'A') {
            toastr.info('该记录不能进行该操作');
            return;
        }
        window.location.href = "post_addedit.html?code=" + selRecords[0].code;

    });
    $('#multideleteBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        var codeList = [];
        selRecords.forEach(function(item) {
            codeList.push(item.code);
        });
        var data = { codeList: codeList, type: '1', userId: userId };
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
    $("#editTitleBtn").click(function(){
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        confirm1('<ul class="form-info" style="padding-left: 0;">'+
            '<li class="clearfix"><span style="float: left;margin-right: 10px;">标题:</span>'+
                '<input value="'+selRecords[0].title+'" id="pTitle" name="pTitle" class="control-def"></li></ul>')
            .then(function(d){
                var title = $("#pTitle").val();
                if(!title){
                    toastr.warning("标题不能为空");
                    return;
                }
                d.close().remove();
                reqApi({
                    code: '610123',
                    json: {
                        code: selRecords[0].code,
                        title: title,
                        userId: userId
                    }
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                });
            });
    });
    $('#detailBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        } else if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        location.href = "post_detail.html?v=1&code=" + selRecords[0].code;
        
    });

})
