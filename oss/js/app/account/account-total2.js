$(function() {

    var userId = getUserId();
    var accountNumber;

    function getCNYAccount(data){
        if(!data || !data.length){
            return "0";
        }
        for(var i = 0; i < data.length; i++){
            if(data[i].currency == "CNY"){
                accountNumber = data[i].accountNumber;
                return moneyFormat(data[0].amount);
            }
        }
    }

    var fields = [{
        field: 'amount',
        title: '余额',
        readonly: 1,
        amount: true,
        formatter: function(value, data) {
            return getCNYAccount(data);
        }
    }, ];

    var options = {
        fields: fields,
        code: {
            'type': 'P',
            'userId': userId
        },
        detailCode: '802503',

    };

    options.buttons = [{
        title: '账目明细',
        handler: function() {
            if(!accountNumber){
                toastr.warning("账户信息获取失败");
                return;
            }
            window.location.href = "account_total_detail2.html?accountNumber=" + accountNumber;
        }
    }]

    buildDetail(options);

});
