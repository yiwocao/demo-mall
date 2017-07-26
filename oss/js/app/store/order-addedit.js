$(function() {

    var code = getQueryString('code');


    var fields = [{
        field: 'code1',
        title: '订单编号',
        '[value]': 'code',
        readonly: true
    }, {
        title: '商品',
        field: 'productName',
        formatter: function(v, data) {
            return data.productOrderList[0].product.name;
        },
        readonly: true
    }, {
        title: '价格',
        field: 'payPrice',
        readonly: true,
        formatter: function(v, data) {
            return moneyFormat(data.productOrderList[0].price2);
        },
        amount: true
    }, {
        title: '下单时间',
        field: 'applyDatetime',
        readonly: true,
        formatter: dateTimeFormat
    }, {
        title: '状态',
        field: 'status',
        readonly: true,
        type: 'select',
        key: 'order_status'
    }, {
        title: '备注',
        field: 'remark',
        type: "teatarea",
        normalArea: true,
        maxlength: 255
    }];

    var options = {
        fields: fields,
        code: code,
        detailCode: '808066'
    };

    options.buttons = [{
        title: '已提',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = $('#jsForm').serializeObject();
                reqApi({
                    code: "808055",
                    json: data
                }).done(function() {
                    sucDetail();
                });
            }
        }
    }, {
        title: '作废',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = {};
                data['codeList'] = [code];
                // data['approver'] = sessionStorage.getItem('userName');
                // data["approveResult"] = "0";
                // data["remark"] = $("#remark").val();
                //var data = $('#jsForm').serializeObject();
                reqApi({
                    code: "808056",
                    json: data
                }).done(function() {
                    sucDetail();
                });
            }
        }
    }, {
        title: '返回',
        handler: function() {
            goBack();
        }
    }];

    buildDetail(options);
});