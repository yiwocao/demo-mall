$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'account',
        title: '参数键'
    }, {
        field: 'password',
        title: '参数值'
    }, {
        field: 'companyCode',
        title: '所属城市',
        type: 'select',
        listCode: '',
        //url: $('#basePath').val() + '/general/city/list',
        keyName: 'code',
        valueName: 'name',
        search: true
    }, {
        field: 'remark',
        title: '备注'
    }];
    buildList({
        router: 'kefu',
        columns: columns,
        pageCode: ''
    });
});