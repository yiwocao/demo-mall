$(function() {

    var code = getQueryString('code');
    var view = getQueryString('v');

    var fields = [{
        title: '关键字',
        field: 'word',
        required: true,
        readonly: view,
        maxlength: 30
    }, {
        title: '权重',
        field: 'weight',
        required: true,
        number: true,
        min: 0,
        max: 1,
        value: '1',
        hidden: true
    }, {
        field: 'level',
        title: '作用等级',
        value: '0',
        defaultOption: 'All',
        defaultValue: '0',
        required: true,
        hidden: true
    }, {
        title: '反应',
        field: 'reaction',
        required: true,
        value: '3',
        type: 'select',
        key: 'kw_reaction',
        defaultValue: '3',
        hidden: true
    }, {
        title: '备注',
        field: 'remark',
        maxlength: 250,
        readonly: view,
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        detailCode: '610006',
        addCode: '610000',
        editCode: '610002'
    });
});