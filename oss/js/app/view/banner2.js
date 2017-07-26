$(function() {

    var isBranch = getQueryString('b') || "";
    var cityId = getCityId(getUserId());
    var cityName = getCityName(getUserId());
    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
        search: true
    }, {
        field: 'orderNo',
        title: '次序'
    }, {
        field: 'belong',
        title: '属于',
        type: 'select',
        key: 'view_belong',
        formatter: function(v, data) {
            if (v == "2") {
                return "地方"
            } else if (v == "3") {
                return "地方私有导航"
            } else {
                return cityName;
            }
        }
    }, {
        title: '备注',
        field: "remark",
    }];
    var searchParams = { companyCode: '0' ,location:'1'};
    if (isBranch) {
        searchParams.companyCode = cityId ? cityId : "0"
    }

    buildList({
        columns: columns,
        pageCode: "610105",
        searchParams: searchParams,
        urlParams: isBranch ? { b: 1 } : {},
        beforeEdit: function(data) {
            if (isBranch) {
                if (data.belong == '1') {
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
});