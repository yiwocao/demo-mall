$(function() {
    var view = getQueryString('v');
    var code = getQueryString('code');
    var isGlobal = !getQueryString('b');
    var cityId = getCityId(getUserId());

    var fields = [
        {
            field: 'smsType',
            type: 'hidden',
            value: "1",
            required: true
        }, {
            field: 'fromSystemCode',
            type: 'hidden',
            value: getSystemId(),
            required: true
        }, {
            field: 'toSystemCode',
            type: 'hidden',
            value: getSystemId(),
            required: true
        }, {
            title: '标题',
            field: 'smsTitle',
            required: true,
            maxlength: 30
        }, {
            title: '内容',
            field: 'smsContent',
            required: true,
            maxlength: 30
        }, {
            field: 'companyCode',
            title: '作用地区',
            type: 'select',
            pageCode: '806014',
            keyName: 'code',
            valueName: 'name',
            defaultOption: '<option value="">All</option>',
            onChange: function(v, r) {
                v = (v == '0' ? '' : v);
                var _user = $('#userId')[0];
                _user.pageOptions.all = false;
                _user.pageParams.start = 1;
                _user.pageParams.companyCode = v;

                $('#userId').renderDropdown({
                    listCode: '805054',
                    params: _user.pageParams,
                    keyName: 'userId',
                    valueName: '{{mobile.DATA}}-{{nickname.DATA}}'
                }, {});
                _user.pageParams.start += 1;
            }
        }, {
            field: 'userId',
            title: '作用人',
            type: 'select',
            defaultOption: '<option value="">All</option>',
            params: {
                companyCode: cityId,
                kind: "f1",
                updater: ""
            },
            pageCode: '805054',
            keyName: 'userId',
            valueName: '{{mobile.DATA}}-{{nickname.DATA}}',
            searchName: "mobile"
        }, {
            title: '作用类型',
            field: 'openType',
            type: 'select',
            data: {
                "0": '文本信息',
                '1': "帖子链接"
            },
            defaultValue: '0'
        }, {
            title: '作用帖',
            field: 'postCode',
            type: 'select',
            pageCode: '610130',
            keyName: 'code',
            valueName: 'title'
        }, {
            title: '备注',
            field: 'remark',
            maxlength: 250
        }
    ];

    var options = {
        fields: fields,
        code: code,
        addCode: '804032',
        detailCode: '804042',
        view: view,
        beforeSubmit: function(data) {
            if (data.openType == 1) {
                data.postTitle = $("#postCode").find("option:selected").text();
            }
            return data;
        }
    };

    buildDetail(options);
});
