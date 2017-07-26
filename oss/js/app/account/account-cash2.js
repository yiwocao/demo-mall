$(function() {

    var userId = getUserId();
    var view = getQueryString('v');
    var bankcardNumber;
    var accountNumber;
    var bankInfo;

    reqApi({
        code: '002050',
        json: {
            "currency": "CNY",
            "userId": userId,
            updater: ""
        },
        sync: true
    }).done(function(data) {
        accountNumber = data[0].accountNumber;
    });

    var fields = [{
        field: 'transAmount',
        title: '提现金额',
        amount: true,
    }, {
        field: 'bankName',
        title: '开户名称',
        readonly: view,
        formatter: function(value, data) {
            bankInfo = data;
            if(!bankInfo || !bankInfo.length){
                toastr.warning("请先绑定银行卡");
            }
            return data.length && data[0].bankName || "-";
        }
    }, {
        field: 'realName',
        title: '姓名',
        readonly: view,
        formatter: function(value, data) {
            return data.length && data[0].realName || "-";
        }
    }, {
        field: 'bankcardNumber',
        title: '账号',
        readonly: view,
        formatter: function(value, data) {
            return data.length && data[0].bankcardNumber || "-";

        }
    }, {
        field: 'bizType',
        title: '状态',
        type: 'hidden',
        value: -11
    }, {
        field: 'bizNote',
        title: '状态',
        type: 'hidden',
        value: 1
    }, {
        field: 'shenqingjilu',
        title: '申请记录',
        type: 'o2m',
        readonly: view,
        pageCode: 802520,
        searchParams: {
            userId: userId,
            bizType:"-11"
        },
        columns: [{
            field: 'code',
            title: '申请编号',
        }, {
            field: 'realName',
            title: '账户',
        }, {
            field: 'transAmount',
            title: '金额',
            formatter: moneyFormat,
        }, {
            field: 'createDatetime',
            title: '时间',
            formatter: dateTimeFormat,
        }, {
            field: 'status',
            title: '状态',
            key: 'approval_status',
            formatter: Dict.getNameForList('approval_status'),
        }, {
            field: 'postAmount',
            title: '余额',
            formatter: moneyFormat,
        }]
    }];

    buildDetail({
        fields: fields,
        code: userId,
        detailCode: '802016',
        editCode: '802510',
        beforeDetail: function(detailParams){
            detailParams.userId = userId;
        },
        beforeSubmit: function(data) {
            data.accountNumberList = [accountNumber];
            data.transAmount = -data.transAmount;
            data.bankcardNumber = bankcardNumber;
            return data;
        }
    });

    $('#subBtn').off("click").click(function() {
        if(!bankInfo || !bankInfo.length){
            toastr.warning("请先绑定银行卡");
            return;
        }
        if ($('#jsForm').valid()) {
            var data = $('#jsForm').serializeObject();
            $('#jsForm').find('.btn-file [type=file]').parent().next().each(function(i, el) {
                var values = [];
                var imgs = $(el).find('.img-ctn');
                imgs.each(function(index, img) {
                    values.push($(img).attr('data-src') || $(img).find('img').attr('src'));
                });

                data[el.id] = values.join('||');
            });

            data['id'] = data['code'];
            data.accountNumberList = [accountNumber];
            data.transAmount = -data.transAmount;
            reqApi({
                code: '802510',
                json: data
                    //fields: fields,
            }).done(function(data) {
                toastr.success('操作成功');
                setTimeout(function() {
                    location.reload();
                }, 1000)
            });
        }
    });

});
