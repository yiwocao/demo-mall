$(function() {
    var code = getQueryString('code');
    var view = !!getQueryString('v');
    var companyCode = getCityId(getUserId());

    var fields = [{
        title: "公司编号",
        field: "companyCode",
        value: companyCode,
        type: "hidden",
        required: true
    }, {
        title: '商品名称',
        field: 'name',
        readonly: view,
        required: true,
        maxlength: 255
    }, {
        // field: "category",
        field: "type",
        title: '商品类别',
        required: true,
        type: 'select',
        pageCode: "808007",
        keyName: 'code',
        valueName: "name",
        searchName: "name",
        params: {
            status: "1",
            companyCode: companyCode
        },
        // formatter: function(v, data) {
        //     return data.type
        // },
        readonly: view,

    }, {
        title: "广告语",
        field: "slogan",
        readonly: view,
        required: true,
        maxlength: 255
    }, {
        title: '广告图',
        field: 'advPic',
        readonly: view,
        required: true,
        type: "img"
    }, {
        title: '商品展示图片',
        field: 'pic',
        type: 'img',
        required: true,
        readonly: view
    }, {
        field: 'costPrice',
        title: '定价',
        type: "hidden",
        value: "0",
        readonly: view,
        required: true,
    }, {
        title: '图文详述',
        field: 'description',
        type: 'textarea',
        readonly: view,
        required: true
    }, {
        title: '备注',
        field: 'remark',
        readonly: view,
        maxlength: 255
    }];


    buildDetail({
        fields: fields,
        code: code,
        view: view,
        addCode: '808010',
        editCode: '808012',
        detailCode: '808026',
        //dataType: 'product'
    });
});
