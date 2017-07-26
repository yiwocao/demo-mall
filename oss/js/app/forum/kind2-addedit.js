$(function() {

    var code = getQueryString('code');
    var view = getQueryString('v');
    var branch = getQueryString('b');
    var cityId = branch ? getCityId(getUserId()) : '0';

    var fields = [{
        hidden: true,
        field: 'companyCode',
        value: cityId,
        required: true
    }, {
        title: '名称',
        field: 'name',
        required: true,
        maxlength: 32,
        readonly: view
    }, {
        title: '次序',
        field: 'orderNo',
        required: true,
        maxlength: 10,
        number: true,
        readonly: view
    }, {
        title: "状态",
        field: "status",
        type: "select",
        key: "aban_status",
        required: true,
        readonly: view
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        addCode: '610020',
        editCode: '610022',
        detailCode: '610026',

    });

});