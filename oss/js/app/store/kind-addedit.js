$(function() {

    var code = getQueryString('code');
    var view = getQueryString('v');

    var userId = getCityId(getUserId());

    var fields = [{
        required: true,
        field: 'companyCode',
        type: 'hidden',
        value: userId
    }, {
        type: 'hidden',
        field: 'type',
        value: '1',
        required: true
    }, {
        type: 'hidden',
        field: 'parentCode',
        value: '0',
        required: true
    }, {
        title: '名称',
        field: 'name',
        required: true,
        maxlength: 32,
        readonly: view
    }, {
        title: '顺序',
        field: 'orderNo',
        required: true,
        maxlength: 10,
        number: true,
        readonly: view
    }, {
        title: '图片',
        field: "pic",
        type: 'img',
        readonly: view
    }];

    buildDetail({
        fields: fields,
        code: code,
        addCode: '808000',
        editCode: '808002',
        detailCode: '808006',
        view: view
    });
});
