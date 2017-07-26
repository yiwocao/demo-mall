$(function() {
    var code = getQueryString('code');
    var view = getQueryString('v');

    var fields = [{
        title: "",
        field: "companyCode",
        value: getCityId(getUserId()),
        required: true,
        type: "hidden"
    }, {
        title: '名字',
        field: 'name',
        required: true,
        readonly: view
    }, {
        title: '次序',
        field: 'orderNo',
        number: true,
        required: true,
        readonly: view,
    }, {
        title: 'Url地址',
        field: 'url',
        readonly: view,
        required: true,
    }, {
        title: "图片",
        field: "pic",
        type: "img",
        readonly: view,
        required: true
    }, {
        title: "备注",
        field: "remark",
        readonly: view,
        maxlength: 255
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        addCode: "610050",
        detailCode: "610056",
        editCode: '610052'

    });


});