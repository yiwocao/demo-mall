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
        field: 'plateName',
        title: '版块'
    }, {
        field: 'status',
        title: '状态',
        formatter: Dict.getNameForList('post_status'),
        search: true,
        key: 'post_status',
        data: { 'C1': '不信任待审批', 'C2': '被举报待审批' }
    }, {
        field: 'reportNum',
        title: '举报次数'
    }, {
        field: 'publishDatetime',
        title: '发布时间',
        formatter: dateTimeFormat
    }, 
    // {
    //     field: 'remark',
    //     title: '备注'
    // }
    ];
    buildList({
        router: 'ccheck',
        columns: columns,
        pageCode: '610200',
        searchParams: {
            companyCode: getCityId(getUserId()),
            status: 'CC'
        },
        singleSelect: false
    });

    var d = dialog({
        content: '<form class="pop-form" id="popForm" novalidate="novalidate">' +
            '<div class="form-body">' +
            '<ul class="form-info">' +
            '<li type="" style=""><label>意见说明:</label><input id="approveNote" name="approveNote" class="control-def"></li>' +
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
                    // required: true,
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
            data["type"] = '1';
            reqApi({
                code: "610114",
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
                    // required: true,
                    maxlength: 255
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
            data["type"] = "1";
            reqApi({
                code: "610114",
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
            toastr.info("请选择记录");
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
        window.location.href = "ccheck_check.html?code=" + selRecords[0].code;
    });
})