$(function() {
    var cityId = getCityId(getUserId()) ? getCityId(getUserId()) : '0';

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        title: "名称",
        field: "title",
        maxlength: 255,
        required: true,
        search: true
    }, {
        title: '定价',
        field: 'fee',
        required: true,
        formatter: moneyFormat,
    }, {
        title: "开始时间",
        title1: "开始时间",
        title2: "结束时间",
        field: "beginDatetime",
        type1: "datetime",
        field1: "beginDatetime",
        field2: "endDatetime",
        formatter: dateTimeFormat,
        required: true,
        search: true,
    }, {
        title: '结束时间',
        field: 'endDatetime',
        formatter: dateTimeFormat,
        required: true
    }, {
        title: '地点',
        field: 'holdPlace',
        maxlength: 255,
        required: true,
    }, {
        title: '状态',
        field: 'status',
        key: 'activity_status',
        formatter: Dict.getNameForList('activity_status'),
        required: true,
        search: true,
    }];
    buildList({
        columns: columns,
        searchParams: {
            companyCode: cityId
        },
        pageCode: "660010",
        beforeEdit: function(data){
            if(data.status == "1" || data.status == "3"){
                toastr.warning("当前状态的活动不能修改");
                return false;
            }
            return true;
        }
    });

    $("#upBtn").click(function() {
        var selRecords = $('#tableList').bootstrapTable('getSelections')
        if (selRecords.length <= 0) {
            toastr.info("请选择记录");
            return;
        }
        if (selRecords[0].status == 1) {
            toastr.info("该活动已上架");
            return;
        }
        confirm("确认上架活动？").then(function() {
            reqApi({
                code: '660003',
                json: {
                    "code": selRecords[0].code
                }
            }).then(function() {
                toastr.info("操作成功");
                $('#tableList').bootstrapTable('refresh', {
                    url: $('#tableList').bootstrapTable('getOptions').url
                });

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

            confirm("确认下架该活动？").then(function() {
                reqApi({
                    code: '660004',
                    json: {
                        "code": selRecords[0].code
                    }
                }).then(function() {
                    toastr.info("操作成功");
                    $('#tableList').bootstrapTable('refresh', {
                        url: $('#tableList').bootstrapTable('getOptions').url
                    });

                });
            });
        } else {
            toastr.info("该活动已下架的状态");
            return;
        }

    });
});
