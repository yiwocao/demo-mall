$(function() {
    var view = getQueryString('v');
    var code = getQueryString('code');
    // var branch = !!getQueryString('b');
    var cityId = getCityId(getUserId());
    var actStatus = Dict.getNameForList('active_status');

    var moderator = {
        title: '版主',
        field: 'userId',
        required: true,
        type: 'select',
        pageCode: "805054",
        params: {
            companyCode: cityId,
            updater: "",
            limit: 10
        },
        keyName: "userId",
        valueName: "{{mobile.DATA}}-{{nickname.DATA}}",
        searchName: "mobile",
        value: function(data) {
            return data.splate.moderator;
        },
        afterSet: function(displayValue, data) {
            if (code && !view) {
                var pageParams = {
                    start: 1,
                    limit: 10,
                    companyCode: cityId,
                    updater: ""
                };
                $.extend(pageParams, {
                    mobile: data.splate.mobile
                });
                $('#userId').renderDropdown($.extend({
                    listCode: '805054',
                    params: pageParams,
                    keyName: 'userId',
                    valueName: '{{mobile.DATA}}-{{nickname.DATA}}'
                }, {}));
                $('#userId')[0].pageOptions = {
                    pageCode: '805054',
                    keyName: 'userId',
                    valueName: '{{mobile.DATA}}-{{nickname.DATA}}',
                    searchName: 'mobile'
                };
                $('#userId')[0].pageParams = pageParams;
                $('#userId')[0].pageParams.start += 1;
                $("#userId_chosen").find(".chosen-drop").find("input").val(data.splate.mobile);
                $('#userId').val(data.splate.moderator);
            }
        }
    }
    if (view) {
        moderator = {
            title: '版主',
            field: 'userId',
            formatter: function(value, data) {
                return data.splate.mobile + '-' + data.splate.nickname;
            }
        }
    }

    var fields = [{
            title: "公司编号",
            field: "companyCode",
            value: cityId,
            type: 'hidden'
        }, {
            title: "公司编号",
            field: "code1",
            value: function(data) {
                return data.splate.code;
            },
            type: 'hidden'
        }, {
            title: '名称',
            field: 'name',
            required: true,
            maxlength: 32,
            readonly: view,
            formatter: function(v, data) {
                return data.splate.name
            },
        }, {
            field: 'parentCode',
            title: '大板块',
            pageCode: '610027',
            required: true,
            type: 'select',
            keyName: 'code',
            params: {
                companyCode: cityId
            },
            valueName: 'name',
            readonly: view,
            value: function(data) {
                return data.splate.bplateCode;
            }
        }, {
            title: '状态',
            field: 'status',
            type: 'select',
            required: true,
            key: 'active_status',
            readonly: view,
            value: function(data) {
                return data.splate.status;
            }
        }, {
            title: '顺序',
            field: 'orderNo',
            required: true,
            maxlength: 10,
            number: true,
            readonly: view,
            formatter: function(v, data) {
                return data.splate.orderNo
            }
        },
        moderator, {
            title: '图片',
            field: 'pic',
            required: true,
            type: 'img',
            single: true,
            readonly: view,
            value1: "splate.pic"
        }, {
            title: '是否默认板块',
            field: 'isDefault',
            type: 'select',
            data: {
                "0": "不是",
                "1": "是"
            },
            value: function(data) {
                return data.splate.isDefault;
            },
            required: true,
            readonly: view,
        }, {
            title: "板块简介",
            field: "description",
            formatter: function(v, data) {
                return data.splate.description;
            }
        }
    ];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        detailCode: '610046',
        addCode: "610040",
        editCode: "610042",
        beforeSubmit: function(data) {
                data.code = $("#code1").val();
                return data;
            }
            //dataType: 'splate'
    });
});