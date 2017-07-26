$(function() {
    var code = getQueryString('code');
    var view = getQueryString('v');
    var companyCode = getCityId(getUserId());

    var fields = [{
        hidden: true,
        field: 'companyCode',
        value: companyCode,
        required: true
    }, {
        title: "标题",
        field: "title",
        maxlength: 24,
        required: true,
        readonly: view,
    }, {
        title: '广告图',
        field: 'pic1',
        type: "img",
        required: true,
        readonly: view,
        single: true
    }, {
        title: '定价',
        field: 'fee',
        required: true,
        readonly: view,
        amount: true,
    }, {
        title: '限制最多参加人数',
        field: 'limitNum',
        required: true,
        readonly: view,
    }, {
        title: '单次报名人数限制',
        field: 'singleNum',
        required: true,
        readonly: view,
    }, {
        title: "开始时间",
        field: "beginDatetime",
        type: "datetime",
        minDate: dateTimeFormat(new Date()),
        required: true,
        readonly: view,
    }, {
        title: '结束时间',
        field: 'endDatetime',
        type: 'datetime',
        minDate: dateTimeFormat(new Date()),
        required: true,
        readonly: view,
    }, {
        title: '地点',
        field: 'holdPlace',
        readonly: view,
        maxlength: 255,
        required: true,
        readonly: view,
    }, {
        title: '图文详述',
        field: 'description',
        type: 'textarea',
        required: true,
        readonly: view,
        isNotFace: false
    }];


    buildDetail({
        fields: fields,
        code: code,
        view: view,
        addCode: '660000',
        editCode: '660002',
        detailCode: '660011',
    });
});