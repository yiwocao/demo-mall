$(function() {

    var isGlobal = !getQueryString('b');


    var columns = [{
            field: '',
            title: '',
            checkbox: true
        }, {
            field: 'smsTitle',
            title: '标题',
            search: true
        },
        // {
        //     field: 'toLevel',
        //     title: '作用等级',
        //     type: 'select',
        //search: true,
        // pageCode: "805113",
        // keyName: "code",
        // valueName: "name",
        // searchName: "name",
        // key: "select_level"
        // },
        {
            field: 'status',
            title: '状态',
            type: 'select',
            formatter: Dict.getNameForList('msg_status'),
            search: true,
            key: 'msg_status'
        },
        // {
        //     title: "作用地区",
        //     field: 'toCompany',
        //     type: "select",
        //     listCode: "806013",
        //     keyName: 'userId',
        //     valueName: 'name',
        //     searchName: "name",
        //     search: true
        // }, 
        {
            field: 'updater',
            title: '最近修改人'
        }, {
            field: 'updateDatetime',
            title: '最近修改时间',
            formatter: dateTimeFormat
        }, {
            field: 'remark',
            title: '备注'
        }
    ];
    // var options = { pageRouter: '/message/news' };
    // if (!isGlobal) {
    //     options.searchParams = {
    //         'companyCode': getCityId(getUserId()),
    //         type: 2
    //     };
    //     options.urlParams = {
    //         'b': '1'
    //     }
    // }
    // buildList(router, columns, options);

    // $('#publishBtn').click(function() {
    //     var selRecords = $('#tableList').bootstrapTable('getSelections');
    //     if (selRecords.length <= 0) {
    //         alert("请选择记录");
    //         return;
    //     }

    //     if (!confirm("确认发布该新闻？")) {
    //         return false;
    //     }
    //     var url = $("#basePath").val() + router + '/publish';
    //     var data = { code: selRecords[0].code };
    //     ajaxPost(url, data).then(function(res) {
    //         if (res.success) {
    //             alert('操作成功');
    //             $('#tableList').bootstrapTable('refresh', { url: $('#tableList').bootstrapTable('getOptions').url });
    //         } else {
    //             alert(res.msg);
    //         }
    //     });
    // });
    if (!isGlobal) {
        options.searchParams = {
            'companyCode': getCityId(getUserId()),
            type: 2
        };
        options.urlParams = {
            'b': '1'
        }
    }
    buildList({
        router: 'news',
        columns: columns,
        pageCode: '804040',
        searchParams: {
            channelType: '4'
        }
    });
    $('#pushBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        var msg = selRecords[0].status == 1 ? "确定发布该消息？" : "确定取消发布该消息？";
        // var data = [];
        // data['id'] = selRecords[0].code;
        confirm(msg).then(function() {
            reqApi({
                code: '804036',
                json: { 'id': selRecords[0].id }
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
        if (selRecords[0].status == 1) {
            toastr.info("已发布，不可修改");
            return;
        }
        window.location.href = 'news_addedit.html?id=' + selRecords[0].id + "&code=" + selRecords[0].id;
    });
})