$(function() {
    var view = getQueryString('v');

    var code = getQueryString('code');
    var branch = getQueryString('b');
    var cityId = getCityId(getUserId());

    var fields = [
        {
            field: 'fromSystemCode',
            type: 'hidden',
            value: getSystemId()
        }, {
            field: 'toSystemCode',
            type: 'hidden',
            value: getSystemId()
        }, {
            field: 'smsType',
            type: 'hidden',
            value: '2'
        }, {
            title: '标题',
            field: 'smsTitle',
            required: true,
            maxlength: 30,
            readonly: view
        }, {
            title: '内容',
            field: 'smsContent',
            required: true,
            type: 'textarea',
            readonly: view
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
            keyName: 'userId',
            valueName: '{{mobile.DATA}}-{{nickname.DATA}}',
            pageCode: "805054",
            params: {
                companyCode: cityId,
                kind: "f1",
                updater: ""
            },
            searchName: "mobile"
        }, {
            title: "拟发送时间",
            field: "topushDatetime",
            type: 'hidden',
            value: dateFormat(Date.now())
        }, {
            title: '备注',
            field: "remark",
            maxlength: 255
        }
    ];

    if (branch) {
        fields.push({
            field: 'companyCode',
            type: 'hidden',
            value: getCityId(getUserId())
        });
    }

    buildDetail({
        fields: fields,
        code: code,
        addCode: '804034',
        editCode: '804035',
        detailCode: '804042',
        view: view,
        beforeSubmit: function(data) {
            if (data.userId) {
                data.companyCode = "";
            }
            return data;
        }
    });
});
