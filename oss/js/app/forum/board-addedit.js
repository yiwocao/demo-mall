$(function() {
    var view = getQueryString('v');
    var code = getQueryString('code');
    var branch = !!getQueryString('b');
    var cityId = branch ? getCityId(getUserId()) : '0';

    var fields = [{
        field: 'code1',
        hidden: true,
        value: function(data) {
            return data.splateTemplate.code;
        }
    }, {
        field: 'parentCode',
        title: '大板块模板',
        pageCode: '610017',
        required: true,
        type: 'select',
        keyName: 'code',
        valueName: 'name',
        readonly: view,
        value: function(data) {
            return data.bplateTemplate.code;
        }
    }, {
        title: '名称',
        field: 'name',
        required: true,
        maxlength: 32,
        readonly: view,
        formatter: function(v, data) {
            return data.splateTemplate.name;
        }
    }, {
        field: "orderNo",
        title: '次序',
        required: true,
        maxlength: 32,
        readonly: view,
        formatter: function(v, data) {
            return data.splateTemplate.orderNo;
        }
    }, {
        title: '图片',
        field: 'pic',
        required: true,
        type: 'img',
        readonly: view,
        single: true,
        value1: "splateTemplate.pic"
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        detailCode: '610036',
        addCode: "610030",
        editCode: "610032",
        beforeSubmit: function(data) {
            data.code = $("#code1").val();
            return data;
        }
    });
});