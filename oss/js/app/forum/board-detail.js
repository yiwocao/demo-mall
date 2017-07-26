$(function() {

    var code = getQueryString('code');

    var fields = [{
        field: 'kind',
        title: '大类',
        listCode: '',
        url: $('#basePath').val() + '/forum/board/kind/detail',
        type: 'select',
        keyName: 'code',
        valueName: 'name',
        readonly: true
    }, {
        title: '名称',
        field: 'name',
        required: true,
        maxlength: 32,
        readonly: true
    }, {
        title: '状态',
        field: 'status',
        required: true,
        type: 'select',
        key: 'active_status',
        readonly: true
    }, {
        title: '顺序',
        field: 'orderNo',
        required: true,
        maxlength: 10,
        number: true,
        readonly: true
    }, {
        title: '版主',
        field: 'userId',
        type: 'select',
        listCode: '',
        url: $("#basePath").val() + '/customer/detail',
        keyName: 'userId',
        valueName: 'loginName',
        readonly: true
    }, {
        title: '图片',
        field: 'pic',
        required: true,
        type: 'img',
        readonly: true
    }, {
        title: '备注',
        field: 'remark',
        maxlength: 200,
        readonly: true
    }];

    buildDetail({
        fields: fields,
        code: code,
        detailCode: '',
    });

});