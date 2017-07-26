$(function() {

    var code = getQueryString('code');
    var isBranch = !!getQueryString('b');
    var view = getQueryString('v');
    var cityName = getCityName(getUserId());

    var innerSelect = {
        'page:mall': '商城页',
        'page:board': '版块页'
    };

    if (!code && isBranch) {
        $('.form-title').after('<div class="alert-warning">请先修改类型为菜单的记录，方可新增该菜单的引流</div>');
    } else {
        innerSelect['page:signin'] = '签到';
    }

    var fields = [{
        field: 'status',
        type: 'hidden',
        value: '1'
    }, {
        field: 'location',
        type: 'hidden',
        value: '1',
        // afterSet: function(v) {
        //     if (v == 0) {
        //         $("#orderNo").parent().hide();
        //     }
        // }
    }, {
        field: 'companyCode',
        type: 'hidden',
        value: isBranch ? getCityId(getUserId()) : '0'
    }, {
        field: 'isCompanyEdit',
        type: 'hidden',
        value: isBranch ? '1' : '0'
    }, {
        field: 'type',
        title: '类型',
        type: 'select',
        hidden: true,
        key: 'view_type',
        defaultValue: isBranch ? '4' : '',
        afterSet: function(v) {
            if (v == 1) {
                $('#orderNo').parent().hide();
            }
        }
    }, {
        title: '名字',
        field: 'name',
        required: true,
        maxlength: 30
    }, {
        title: '次序',
        field: 'orderNo',
        required: true,
        number: true,
        maxlength: 10
    }, {
        title: 'url类型',
        field: 'urlKind',
        required: true,
        type: 'select',
        // hidden: code,
        data: {
            '1': '内部',
            '2': '外部'
        },
        onChange: function(r) {
            // if (!code) {
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
            $('#plateCode').val('');
            $('#url').val('');
            // }
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
        data: innerSelect,
        hidden: code,
        onChange: function(r) {
            $('#url').val(r);
            if (r == 'page:board') {
                $('#plateCode').parent().show();
            } else {
                $('#plateCode').parent().hide();
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
        listCode: '610048',
        keyName: 'code',
        valueName: 'name',
        type: 'select',
        required: true,
        hidden: true,
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
        hidden: code,
        required: true,
    }, {
        title: '图片',
        field: 'pic',
        type: 'img',
        single: true,
        required: true
    }, {
        title: '属于',
        field: 'belong',
        required: true,
        type: 'select',
        key: 'view_belong',
        formatter: function(v, data) {
            if (v == 1) {
                return '总部'
            } else if (v == 2) {
                return "地方"
            } else if (v == 3) {
                return "地方私有导航"
            } else {
                return cityName;
            }
        }
    }, {
        title: "备注",
        field: "remark",
        maxlength: 255,
        readonly: view
    }];

    var editCode11 = isBranch ? "610101" : "610100";
    var options = {
        fields: fields,
        code: code,
        editCode: editCode11,
        detailCode: '610106',
        view: view
    };

    buildDetail(options);
});