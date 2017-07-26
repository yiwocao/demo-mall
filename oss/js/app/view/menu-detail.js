$(function() {

    var code = getQueryString('code');


    var fields = [{
        field: 'companyCode',
        type: 'hidden',
        defaultValue: '0'
    }, {
        title: '名字',
        field: 'name',
        required: true,
        maxlength: 30,
        readonly: true
    }, {
        field: 'parentCode',
        title: '父菜单',
        type: 'select',
        url: $('#basePath').val() + '/view/detail',
        keyName: 'code',
        valueName: 'name',
        readonly: true
    }, {
        title: '顺序',
        field: 'orderNo',
        required: true,
        number: true,
        maxlength: 10,
        readonly: true
    }, {
        title: 'url类型',
        field: 'urlKind',
        required: true,
        type: 'select',
        readonly: true,
        data: { '1': '内部', '2': '外部' },
        onChange: function(r) {
            if (r == 1) {
                $('#url1').parent().show();
                $('#url').parent().hide();
                $('#plateCode').parent().hide();
            } else if (r == 2) {
                $('#url1').parent().hide();
                $('#url').parent().show();
                $('#plateCode').parent().hide();
            } else {
                $('#url1').parent().hide();
                $('#url').parent().hide();
                $('#plateCode').parent().hide();
            }
            $('#url1').val('');
            $('#url').val('');
            $('#plateCode').val('');
        },
        value: function(r) {
            if (r.url.indexOf('page:') == -1) {
                return '2';
            } else {
                return '1';
            }
        }
    }, {
        title: '内部页',
        field: 'url1',
        required: true,
        type: 'select',
        readonly: true,
        data: {
            'page:headline': '头条页',
            'page:forum': '有料页',
            'page:xiaomi': '客服页',
            'page:custom': '自定义页',
            'page:mine': '个人中心页',
            'page:mall': '商城页',
            'page:signin': '签到',
            'page:board': '版块页'
        },
        onChange: function(r) {
            $('#url').val(r);
            if (r == 'page:board') {
                $('#plateCode').parent().show();
            }
        },
        value: function(r) {
            if (r.url.indexOf('page:') == -1) {
                return '';
            } else {
                return r.url.split(',')[0];
            }
        }
    }, {
        title: '版块',
        field: 'plateCode',
        url: $('#basePath').val() + '/forum/board/detail',
        keyName: 'code',
        valueName: 'name',
        type: 'select',
        required: true,
        hidden: true,
        readonly: true,
        onChange: function(r) {
            $('#url').val('page:board,code:' + r);
        },
        value: function(r) {
            if (r.url.indexOf('page:') == -1) {
                return '';
            } else {
                return r.url.split(',').length > 1 && r.url.split(',')[1].replace('code:', '') || '';
            }
        }
    }, {
        title: 'url',
        field: 'url',
        required: true,
        maxlength: 200,
        readonly: true
    }, {
        title: '图片',
        field: 'pic',
        type: 'img',
        required: true,
        readonly: true
    }, {
        title: '属于',
        field: 'belong',
        formatter: function(v) {
            if (v == 1) {
                return '全局';
            } else if (v == 2) {
                return '地方默认';
            } else {
                return '私有';
            }
        },
        readonly: true
    }];

    buildDetail({
        fields: fields,
        code: code,
        detailCode: ' ',

    });

});