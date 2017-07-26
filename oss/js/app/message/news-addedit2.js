$(function() {
    var view = getQueryString('v');

    var code = getQueryString('code');
    var branch = getQueryString('b');
    var cityId = getCityId(getUserId());


    var fields = [{
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
        }, 
        // {
        //     field: 'toKind',
        //     title: '针对人群',
        //     type: 'select',
        //     key: 'toKind',
        //     data: {
        //         "1": '前端用户',
        //         '3': "平台"

        //     },
        //     defaultValue: '1',
        //     // formatter: Dict.getNameForList('toKind'),
        //     readonly: view,
        //     required: true
        // }, 
        {
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
        }, 
        {
            field: 'companyCode',
            type: 'hidden',
            value: cityId,
            required: true
        },
        {
            field: 'userId',
            title: '作用人',
            type: 'select',
            pageCode: "805054",
            params: {
            companyCode: cityId,
            kind: "f1",
            updater: "",
            // limit: 10,
            // start:1
            },
            keyName: "userId",
            valueName: "{{mobile.DATA}}-{{nickname.DATA}}",
            searchName: "mobile",
        },
        {
            title: "拟发送时间",
            field: "topushDatetime",
            type: 'hidden',
            //formatter: dateTimeFormat,
            value: dateFormat(Date.now())
        }, {
            title: '备注',
            field: "remark",
            maxlength: 255

        }
        // {
        //     title: '类型',
        //     field: 'type',
        //     required: true,
        //     type: 'select',
        //     key: 'msg_type',
        //     value: '2',
        //     hidden: true
        // },
        // {
        //     field: 'toCompany',
        //     title: '作用地区',
        //     type: 'select',
        //     pageCode: '806014',
        //     keyName: 'code',
        //     valueName: 'name',
        //     defaultOption: 'All',
        //     defaultValue: '0',
        //     required: true,
        //     readonly: view,
        //     hidden: branch,
        //     onChange: function(v) {
        //         var pageParams = {
        //             start: 1,
        //             limit: 10,
        //             level: "0",
        //             companyCode: "0"
        //         };
        //         $("#toUser").renderDropdown($.extend({
        //             listCode: "805054",
        //             params: pageParams,
        //             keyName: "userId",
        //             valueName: "{{loginName.DATA}} - {{mobile.DATA}}"
        //         }, { defaultOption: '<option value="0">All</option>' }));
        //         $("#toUser")[0].pageOptions = {
        //             pageCode: "805054",
        //             keyName: "userId",
        //             valueName: "{{mobile.DATA}} - {{loginName.DATA}}",
        //             searchName: "mobile"
        //         };
        //         $("#toUser")[0].pageParams = pageParams;
        //         $("#toUser")[0].pageParams.start += 1;
        //     }
        // },
        // {
        //     field: 'toLevel',
        //     title: '作用等级',
        //     type: 'select',
        //     pageCode: "805113",
        //     keyName: 'code',
        //     valueName: 'name',
        //     //key: "select_level",
        //     defaultOption: 'All',
        //     defaultValue: '0',
        //     required: true,
        //     readonly: view,
        //     onChange: function(v) {
        //         var pageParams = {
        //             start: 1,
        //             limit: 10,
        //             level: "0",
        //             companyCode: "0"
        //         };
        //         $("#toUser").renderDropdown($.extend({
        //             listCode: "805054",
        //             params: pageParams,
        //             keyName: "userId",
        //             valueName: "{{loginName.DATA}} - {{mobile.DATA}}"
        //         }, { defaultOption: '<option value="0">All</option>' }));
        //         $("#toUser")[0].pageOptions = {
        //             pageCode: "805054",
        //             keyName: "userId",
        //             valueName: "{{mobile.DATA}} - {{loginName.DATA}}",
        //             searchName: "mobile"
        //         };
        //         $("#toUser")[0].pageParams = pageParams;
        //         $("#toUser")[0].pageParams.start += 1;
        //     }
        // }, {
        //     field: 'toUser',
        //     title: '作用人',
        //     type: 'select',
        //     defaultOption: 'All',
        //     defaultValue: '0',
        //     required: true
        // }
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
        beforeSubmit: function (data) {
            if(data.userId){
                data.companyCode = "";
            }
            return data;
        }
    });
});