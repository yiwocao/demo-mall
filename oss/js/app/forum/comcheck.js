$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: '',
        title: '针对',
        formatter: function(v, r) {
            if (r.post) {
                return '帖子：' + text3dot(r.post.title || r.post.content, 10);
            } else if (r.parentComment) {
                return '评论：' + text3dot(r.post.content, 10);
            }
        }
    }, {
        field: 'content',
        title: '内容',
        search: true
    }, {
        field: 'status',
        title: '状态',
        formatter: Dict.getNameForList('comment_status'),
        type: 'select',
        search: true,
        value: 'C2',
        key: 'comment_status'
    }, {
        field: 'nickname',
        title: '评论人'
    }, {
        field: 'commDatetime',
        title: '评论时间',
        formatter: dateTimeFormat
    }, 
    // {
    //     field: 'approveNote',
    //     title: '备注'
    // }
    ];
    buildList({
        router: 'comcheck',
        columns: columns,
        pageCode: "610202",
        singleSelect: false,
        searchParams: {
            companyCode: getCityId(getUserId())
        }
    });

    var d = dialog({
        content: '<form class="pop-form" id="popForm" novalidate="novalidate">' +
            '<div class="form-body">' +
            '<ul class="form-info">' +
            '<li type="" style=""><label><b>*</b>意见说明:</label><input id="approveNote" name="approveNote" class="control-def"></li>' +
            '<li><input id="popBtn1" type="button" class="btn" value="通过"><input id="popBtn2" type="button" class="btn margin-left-10" value="不通过"><input id="popBtn3" type="button" class="btn margin-left-10" value="返回"></li></ul>' +
            '</div></form>'
    });

    $(document).on('click', '#popBtn3', function() {
        d.close();
    });

    $(document).on('click', '#popBtn1', function() {
        $('#popForm').validate({
            'rules': {
                approveNote: {
                    required: true,
                    maxlength: 200
                }
            }
        });
        if ($('#popForm').valid()) {
            var selRecords = $('#tableList').bootstrapTable('getSelections');
            if (selRecords.length <= 0) {
                toastr.info("请选择记录");
                return;
            }
            var data = $('#popForm').serializeObject();
            data.codeList = [];
            selRecords.forEach(function(item) {
                data.codeList.push(item.code);
            });

            data['approver'] = sessionStorage.getItem('userName');
            data["approveResult"] = "1";
            data["type"] = '2';
            reqApi({
                code: "610116",
                json: data
            }).done(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                d.close();
            });
        }
    });

    $(document).on('click', '#popBtn2', function() {
        $('#popForm').validate({
            'rules': {
                approveNote: {
                    required: true,
                    maxlength: 200
                }
            }
        });
        if ($('#popForm').valid()) {
            var selRecords = $('#tableList').bootstrapTable('getSelections');
            var data = $('#popForm').serializeObject();
            data.codeList = [];
            selRecords.forEach(function(item) {
                data.codeList.push(item.code);
            });
            data['approver'] = sessionStorage.getItem('userName');
            data["approveResult"] = "0";
            data["type"] = "2";
            reqApi({
                code: "610116",
                json: data
            }).done(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
                d.close();
            });
        }
    });

    $('#multicheckBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            alert("请选择记录");
            return;
        }
        d.showModal();
    });
    $('#check2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        window.location.href = "comment_check.html?code=" + selRecords[0].code;
    });
    $('#delete2Btn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords.length >= 2) {
            toastr.info("请选择一条记录");
            return;
        }
        var codeList = [];
        selRecords.forEach(function(item) {
            codeList.push(item.code);
        });
        var data = { codeList: codeList, type: '2', userId: getUserId() };
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
})