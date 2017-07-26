$(function() {

    var code = getQueryString('code');
    var userId = getUserId();

    var fields = [{
        field: 'code1',
        title: '申请编号',
        formatter: function(v, data){
            return data.code;
        }
    }, {
        field: 'realName',
        title: '账户'
    }, {
        field: 'transAmount',
        title: '提现金额',
        formatter: function(v, data){
            v = Math.abs(v);
            return moneyFormat(v);
        }
    }, {
        field: 'createDatetime',
        title: '申请时间',
        formatter: dateTimeFormat
    }, {
        field: 'rollbackNote',
        title: '审批意见',
        required: true
    }];

    buildDetail({
        fields: fields,
        code: code,
        detailCode: '802522',
        editCode: '802511',
        beforeSubmit: function(data) {
            data.codeList = [code];
            data.rollbackUser = userId;
            return data;
        },
        buttons: [{
            title: "通过",
            handler: function(){
                if ($('#jsForm').valid()) {
                    var data = $('#jsForm').serializeObject();
                    data.codeList = [code];
                    data.rollbackUser = userId;
                    data.rollbackResult = 1;
                    reqApi({
                        code: '802511',
                        json: data
                    }).done(function(data) {
                        sucDetail();
                    });
                }
            }
        }, {
            title: "不通过",
            handler: function(){
                if ($('#jsForm').valid()) {
                    var data = $('#jsForm').serializeObject();
                    data.codeList = [code];
                    data.rollbackUser = userId;
                    data.rollbackResult = 0;
                    reqApi({
                        code: '802511',
                        json: data
                    }).done(function(data) {
                        sucDetail();
                    });
                }
            }
        }, {
            title: "返回",
            handler: function(){
                goBack();
            }
        }]
    });

});
