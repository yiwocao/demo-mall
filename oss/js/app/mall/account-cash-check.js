$(function() {

    var code = getQueryString('code');
    var userId = getUserId();
  var view = getQueryString('v');
    var fields = [{
        field: 'codeList',
        title: '申请编号',
        formatter: function(v, data){
            return data.code;
        }
    }, {
        field: 'accountName',
        title: '用户名',
        readonly: view,
    }, {
        field: 'amount',
        title: '提现金额',
        formatter: function (v, data) {
            v = Math.abs(v);
             return moneyFormat(v);
          }

    }, {
        field: 'payCardNo',
        title: '银行卡号',
      readonly: view,
    },
    {
        field: 'approveUser',
        title: '审批人',
        value: 'admin',
    }, {
        field: 'approveNote',
        title: '审批意见',
        required: true
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        detailCode: '802756',
        editCode: '802752',
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
                    data.approveResult = 1;
                    reqApi({
                        code: '802752',
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

                    data.approveResult = 0;
                    reqApi({
                        code: '802752',
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
