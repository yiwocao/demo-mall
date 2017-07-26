$(function() {
    var code = getQueryString('code');

    var fields = [{
            title: '商品积分价格',
            field: 'price2',
            amount: true,
            formatter: moneyFormat,
            required: true,

        },
        {
            title: '商品人民币价格',
            field: 'price3',
            value: "0",
            hidden: true,
            required: true
        },
        {
            title: 'UI位置',
            field: "location",
            type: 'hidden',
            value: "0",
            //key: "goods_location",
            required: true,
        }, {
            title: "次序",
            field: "orderNo",
            number: true,
            required: true,
        }, {
            field: 'price1',
            value: "0",
            hidden: true,
            required: true
        }, {
            field: 'originalPrice',
            value: "0",
            hidden: true,
            required: true
        }, {
            title: '备注',
            field: 'remark',
            maxlength: 255
        }
    ];

    var options = {
        fields: fields,
        code: code,
        detailCode: '808026',
    };

    options.buttons = [{
            title: '确定',
            handler: function() {
                if ($('#jsForm').valid()) {
                    var data = $('#jsForm').serializeObject();
                    data["code"] = code;
                    confirm("确认上架该商品？").then(function() {
                        reqApi({
                            code: "808013",
                            json: data
                        }).done(function() {
                            sucDetail();
                        });
                    });
                }
            }
        },
        {
            title: '返回',
            handler: function() {
                goBack();
            }
        }
    ];

    buildDetail(options);

});