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
        //  {
        //     field: 'type',
        //     title: '类型',
        //     formatter: Dict.getNameForList('msg_type'),
        //     key: 'msg_type'
        // }, 
        // {
        //     field: 'toCompany',
        //     title: '作用地区',
        //     type: "select",
        //     listCode: "806013",
        //     keyName: 'userId',
        //     valueName: 'name',
        //     searchName: "name",
        //     search: true
        // }, 
        // {
        //     field: 'toLevel',
        //     title: '作用等级',
        //     search: true,
        //     // type: 'select',
        //     // key: "select_level"
        // },
        // {
        //     field: 'mobile',
        //     title: '作用人手机',
        //     formatter: function(v, data) {
        //         return data.toUser == "0" ? "All" : v;
        //     }
        // },
        {
            field: 'status',
            title: '状态',
            formatter: Dict.getNameForList('msg_status'),
            //search: true,
            key: 'msg_status'
        },
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
    var options = {};
    if (!isGlobal) {
        options.searchParams = {
            'companyCode': getCityId(getUserId())
        };
        options.urlParams = {
            'b': '1'
        }
    } else {
        options.searchParams = {
            'companyCode': '0'
        };
    }

    buildList({
        router: 'notice',
        columns: columns,
        pageCode: '804040',
        searchParams: {
            channelType: '2'
        },
        beforeEdit: function(r) {
            if (r.status == 1) {
                toastr.info('该记录无法进行该操作');
                return false;
            }
            return true;
        }
    });

    $('#pushBtn').click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections');
        // if (selRecords.length <= 0) {
        //     toastr.info("请选择记录");
        //     return;
        // }
        window.location.href = 'notice_addedit2.html?id=';
    });

})