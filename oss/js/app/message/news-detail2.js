$(function() {
    var code = getQueryString('code');

    var fields = [{
        title: '标题',
        field: 'title',
        readonly: true
    }, {
        title: '内容',
        field: 'content',
        readonly: true
    }, {
        field: 'toLevel',
        title: '作用等级',
        type: 'select',
        listCode: '',
        // url: $('#basePath').val() + '/user/level/page?start=1&limit=100000',
        keyName: 'code',
        valueName: 'name',
        defaultOption: 'All',
        readonly: true
    }, {
        title: '备注',
        field: 'remark',
        readonly: true
    }];

    buildDetail({
        fields: fields,
        code: code,

        detailCode: ' ',

    });
});