$(function() {
    var code = getQueryString('code');

    var view = getQueryString('v');

    var fields = [{
        field: 'isDefault',
        type: 'hidden',
        defaultValue: '0',
        type: 'hidden',
        required: true
    }, {
        field: 'type',
        value: "1",
        type: 'hidden',
        required: true
    }, {
        title: '名称',
        field: 'name',
        required: true,
        maxlength: 32,
        readonly: view,
    }, {
        title: '负责人',
        field: 'userId',
        listCode: '805055',
        keyName: "userId",
        type: 'select',
        valueName: 'loginName',
        searchName: 'loginName',
        params: {
            kind: "01",
            updater: "",
            status:"0"
        },
        readonly: view,
        required: true,
        //placeholder: "用负责人的名称登录城市网地区管理"
    }, {
        title: '次序',
        field: 'orderNo',
        required: true,
        number: true,
        maxlength: 10,
        readonly: view
    }, {
        title: '联系方式',
        field: 'mobile',
        required: true,
        mobile: true,
        readonly: view,
    }, {
        title: '邮箱',
        field: 'email',
        required: true,
        email: true,
        maxlength: 30,
        readonly: view,
    }, {
        title: '地址',
        required: true,
        type: 'citySelect',
        readonly: view,
    }, {
        title: "详细地址",
        //placeholder: '详细地址（如街道、门牌号等）',
        field: 'address',
        required: true,
        maxlength: 100,
        readonly: view,
    }, {
        title: '域名',
        field: 'domain',
        single: true,
        maxlength: 100,
        readonly: view,
    }, {
        title: 'logo',
        field: 'logo',
        type: 'img',
        single: true,
        readonly: view,
    }, {
        title: '二维码',
        field: 'qrCode',
        type: 'img',
        single: true,
        readonly: view,
    }, {
        title: '公司简介',
        field: 'description',
        type: 'textarea',
        required: true,
        readonly: view,
        isNotFace:false,
    }, {
        title: '服务时间',
        field: 'remark',
        //type:""
        maxlength: 250,
        readonly: view,
    }];

    var options = {
        fields: fields,
        code: code,
        view: view,
        addCode: '806000',
        editCode: '806004',
        detailCode: '806010',

    };
    buildDetail(options);

    if (!code) {
        $("#subBtn").off("click").click(function() {
            if ($('#jsForm').valid()) {
                var data = $('#jsForm').serializeObject();
                $('#jsForm').find('.btn-file [type=file]').parent().next().each(function(i, el) {
                    var values = [];
                    var imgs = $(el).find('.img-ctn');
                    imgs.each(function(index, img) {
                        values.push($(img).attr('data-src') || $(img).find('img').attr('src'));
                    });
                    // if (item.type == 'img' && item.passValue) {
                    //     data[item.field] = $('#' + item.field).find('option:selected').html();
                    // }
                    data[el.id] = values.join('||');
                });
                if ($('#jsForm').find('#province')[0]) {
                    var province = $('#province').val();
                    var city = $('#city').val();
                    var area = $('#area').val();
                    if (!city) {
                        data['city'] = province;
                        data['area'] = province;
                    } else if (!area) {
                        data['city'] = province;
                        data['area'] = city;
                    }
                }
                for (var i = 0, len = fields.length; i < len; i++) {
                    var item = fields[i];
                    if (item.equal && (!$('#' + item.field).is(':hidden') || !$('#' + item.field + 'Img').is(':hidden'))) {
                        data[item.equal] = $('#' + item.field).val() || $('#' + item.field).attr('src');
                    } else if (item.emptyValue && !data[item.field]) {
                        data[item.field] = item.emptyValue;
                    } else if (item.readonly && item.pass) {
                        data[item.field] = $('#' + item.field).attr('data-value') || $('#' + item.field).html();
                    }
                    if (item.type == 'select' && item.passValue) {
                        data[item.field] = $('#' + item.field).find('option:selected').html();
                    }
                    // if (item.type == 'img' && item.passValue) {
                    //     data[item.field] = $('#' + item.field).find('option:selected').html();
                    // }
                    if (item.type == "checkbox") {
                        data[item.field] = $.isArray(data[item.field]) ? data[item.field].join(",") : data[item.field];
                    }
                }
                data['id'] = data['code'];
                if (options.beforeSubmit) {
                    data = options.beforeSubmit(data)
                    if (!data) {
                        return;
                    }
                }
                reqApi({
                    code: code ? options.editCode : options.addCode,
                    json: data
                }).done(function(data) {
                    reqApi({
                        code: "610043",
                        json: {
                            companyCode: data.code
                        }
                    }).then(function(data) {
                        sucDetail();
                    });
                });
            }
        });
    };

});
