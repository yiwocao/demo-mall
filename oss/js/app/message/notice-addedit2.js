$(function() {
    var view = getQueryString('v');
    var code = getQueryString('code');
    var isGlobal = !getQueryString('b');
    var cityId = getCityId(getUserId());
    //var cityId = isGlobal ? '0' : getCityId(getUserId());

    var fields = [{
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
            field: 'companyCode',
            type: 'hidden',
            value: cityId,
            required: true
        },
        {
            field: 'toSystemCode',
            type: 'hidden',
            value: getSystemId(),
            required: true
        },
        {
            title: '标题',
            field: 'smsTitle',
            required: true,
            maxlength: 30
        },
        {
            title: '内容',
            field: 'smsContent',
            required: true,
            maxlength: 30
        },
        // {
        //     title: "拟发送时间",
        //     field: "topushDatetime",
        //     type: 'datetime',
        //     formatter: dateTimeFormat
        // },
        // {
        //     title: '内容',
        //     field: 'content',
        //     required: true,
        //     type: 'textarea'
        // },
        //  {
        //     title: '类型',
        //     field: 'type',
        //     required: true,
        //     type: 'select',
        //     key: 'msg_type',
        //     value: '1',
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
        //     // defaultValue: cityId,
        //     hidden: !isGlobal,
        //     required: true,
        //     onChange: function(v, r) {
        //         var mobile = $("#mobile");
        //         if (mobile.val() && mobile.valid()) {
        //             v = (v == '0' ? '' : v);
        //             $('#toUser').renderDropdown({

        //                 pageCode: '805054',
        //                 keyName: 'userId',
        //                 valueName: 'loginName',
        //                 defaultOption: '<option value="0">All</option>'
        //             });
        //         } else {
        //             $('#toUser').renderDropdown2({}, '<option value="0">All</option>');
        //         }
        //     }
        // }, {
        //     field: 'toLevel',
        //     title: '作用等级',
        //     type: 'select',
        //     listCode: '',
        //     // url: $('#basePath').val() + '/user/level/page?start=1&limit=100000',
        //     keyName: 'code',
        //     valueName: 'name',
        //     defaultOption: 'All',
        //     required: true,
        //     onChange: function(v, r) {
        //         var mobile = $("#mobile");
        //         if (mobile.val() && mobile.valid()) {
        //             v = (v == '0' ? '' : v);
        //             $('#toUser').renderDropdown({
        //                 pageCode: '805054',
        //                 keyName: 'userId',
        //                 valueName: 'loginName',
        //                 defaultOption: '<option value="0">All</option>'
        //             });
        //         } else {
        //             $('#toUser').renderDropdown2({}, '<option value="0">All</option>');
        //         }
        //     }
        // },
        {
            field: 'userId',
            title: '作用人',
            type: 'select',
            pageCode: "805054",
            params: {
            companyCode: cityId,
            kind: "f1",
            updater: "",
            // limit: 10
            },
            keyName: "userId",
            valueName: "{{mobile.DATA}}-{{nickname.DATA}}",
            searchName: "mobile",
            defaultOption: '<option value="">All</option>',
            // onChange: function(v, r) {
            //     v = (v == '0' ? '' : v);
            //     var pageParams = {
            //         start: 1,
            //         limit: 10,
            //         companyCode: cityId,
            //         publisher:v,
            //         updater: "",
            //     };
            //     $('#postCode').renderDropdown({
            //         listCode: '610130',
            //         params: pageParams,
            //         keyName: 'code',
            //         valueName: 'title'
            //     }, {});
            //     $('#postCode')[0].pageParams = pageParams;
            //     $('#postCode')[0].pageParams.start += 1;
            // }
        }, 
        {
            title: '作用类型',
            field: 'openType',
            type: 'select',
            data: {
                "0": '文本信息',
                '1': "帖子链接"
            },
            defaultValue: '0',
        },
        {
            title: '作用帖',
            field: 'postCode',
            type: 'select',
            pageCode: '610130',
            keyName: 'code',
            valueName: 'title',
            params: {
            companyCode: cityId,
            // start:1,
            // limit:10,
            }
        },
        {
            title: '备注',
            field: 'remark',
            maxlength: 250
        }
    ];

    // if (!isGlobal) {
    //     fields.push();
    // }


    var options = {
        fields: fields,
        code: code,
        addCode: '804032',
        //editCode: '',
        detailCode: '804042',
        view: view,
        beforeSubmit: function(data) {
            if(data.openType == 1){
                data.postTitle = $("#postCode").find("option:selected").text();
            }
            return data;
        },
    };

    buildDetail(options);
    
});