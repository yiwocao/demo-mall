$(function() {
    var code = getQueryString('code');
    var router = '/message';

    var fields = [{
        title: '标题',
        field: 'title',
        readonly: true
    }, {
        title: '内容',
        field: 'content',
        readonly: true
    }, {
        field: 'toCompany',
        title: '作用地区',
        type: 'select',
        listCode: '',
        //url: $('#basePath').val() + '/general/city/detail',
        keyName: 'code',
        valueName: 'name',
        defaultOption: 'All',
        readonly: true
    }, {
        field: 'toLevel',
        title: '作用等级',
        type: 'select',
        listCode: '',
        // url: $('#basePath').val() + '/user/level/detail',
        listCode: '',
        keyName: 'code',
        valueName: 'name',
        defaultOption: 'All',
        readonly: true
    }, {
        field: 'toUser',
        title: '作用人',
        type: 'select',
        listCode: '',
        // url: $('#basePath').val() + '/customer/detail?companyCode=' + getCityId(getUserId()),
        keyName: 'userId',
        valueName: 'loginName',
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