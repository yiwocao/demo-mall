$(function() {

    var code = getQueryString('code');
    var isBranch = !!getQueryString('b');
    var cityName = getCityName(getUserId());
    var view = getQueryString('v');
    var belong = {
        title: '属于',
        field: 'belong',
        required: true,
        type: 'select',
        data: { "2": "地方", "3": "地方私有导航" },
        key: 'view_belong'
    };
    if (code && view) {
        belong.formatter = function(v, data) {
            if (v == "2") {
                return "地方"
            } else if (v == "3") {
                return "地方私有导航"
            } else {
                return cityName;
            }
        }
    } else if (code) {
        belong.formatter = function(v, data) {
            if (v != "3" && v != "2") {
                return "3";
            }
            return v;
        }
    }




    var fields = [{
        title: '导航名字',
        field: 'name',
        required: true,
        maxlength: 30,
        readonly: view
    }, {
        field: 'pic',
        title: '图片',
        type: 'img',
        required: true,
        readonly: view
    }, {
        title: '次序',
        field: 'orderNo',
        required: true,
        number: true,
        maxlength: 10,
        readonly: view
    }, belong, {
        title: "站点",
        field: 'companyCode',
        value: getCityId(getUserId()),
        hidden: true,
    }, {
        title: '备注',
        field: 'remark',
        maxlength: 255,
        readonly: view
    }];

    var editCode1 = isBranch ? "610081" : "610080";

    buildDetail({
        code: code,
        view: view,
        fields: fields,
        detailCode: '610086',
        editCode: editCode1
    })

});