$(function() {
    var cityId = getCityId(getUserId());
    var cityName = getCityName(getUserId());
    var isBranch = !!getQueryString('b');


    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名字',
        search: true
    }, {
        field: 'orderNo',
        title: '顺序'
    }, {
        field: 'belong',
        title: '属于',
        type: 'select',
        //key: 'view_belong',
        formatter: function(v, data) {
            if (v == "2") {
                return "地方"
            } else if (v == "3") {
                return "地方私有导航"
            } else {
                return cityName;
            }
        },
        //search: true
    }, {
        title: "备注",
        field: "remark"
    }];

    var searchParams = { companyCode: '0' };
    if (isBranch) {
        searchParams.companyCode = getCityId(getUserId()) ? getCityId(getUserId()) : "0"
    }


    buildList({
        router: 'menu2',
        columns: columns,
        pageCode: '610085',
        searchParams: searchParams,
        urlParams: isBranch ? { b: 1 } : {},
        beforeEdit: function(data) {
            if (isBranch) {
                if (data.belong == '0') {
                    toastr.info('总部记录不能修改');
                    return false;
                } else { return true; }

            } else {
                if (data.belong == '1' || data.belong == '2') {
                    return true;
                } else {
                    toastr.info('私有记录不能修改');
                    return false
                }
            }
        }
    });

    // $('#editBtn').off("click").click(function() {
    //     var selRecords = $('#tableList').bootstrapTable('getSelections');
    //     if (selRecords.length <= 0) {
    //         toastr.info("请选择记录");
    //         return;
    //     }
    //     if (selRecords[0].companyCode != '0' && !isBranch) {
    //         toastr.info('私有记录不能修改');
    //         return false;
    //     }
    //     var param = isBranch ? "&b=1" : "";
    //     param = param + (selRecords[0].parentCode ? "&p=" + selRecords[0].parentCode : "");
    //     window.location.href = "menu_addedit.html?code=" + (selRecords[0].code || selRecords[0].id) + param;
    // });
});