$(function() {

    var code = getQueryString('code');
    // var router = '/forum/post';

    var fields = [{
        field: 'plateCode1',
        title: '版块',
        type: 'select',
        '[value]': 'plateCode',
        listCode: "",
        // url: $('#basePath').val() + '/forum/board/detail',
        keyName: 'code',
        valueName: 'name',
        readonly: true
    }, {
        title: '标题',
        field: 'title',
        readonly: true
    }, {
        title: '内容',
        field: 'content',
        readonly: true
    }, {
        title: '图片',
        field: 'picArr',
        //field:'photo',
        readonly: true,
        type: 'img',
        arbitrarily: 'true'
    }, {
        field: 'location',
        title: '位置',
        key: 'post_location',
        type: 'select',
        readonly: true
    }, 
    // {
    //     field: 'validDatetimeEnd',
    //     title: '位置失效时间',
    //     formatter: dateTimeFormat,
    //     readonly: true
    // }, 
    {
        title: '发帖人',
        field: 'nickname',
        readonly: true
    }, {
        title: '发帖时间',
        field: 'publishDatetime',
        readonly: true,
        formatter: dateTimeFormat
    }, {
        title: '状态',
        field: 'status',
        readonly: true,
        type: 'select',
        key: 'post_status'
    }, {
        title: '备注',
        field: 'remark',
        readonly: true
    }, 
    // {
    //     title: '复核人',
    //     field: 'approver',
    //     readonly: true
    // }, {
    //     title: '复核时间',
    //     field: 'approveDatetime',
    //     readonly: true,
    //     formatter: dateTimeFormat
    // }, {
    //     title: '意见说明',
    //     field: 'approveNote1',
    //     '[value]': 'approveNote',
    //     readonly: true
    // }
    ];

    buildDetail({
        fields: fields,
        code: code,
        detailCode: '610201',
    });

});