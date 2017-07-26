$(function() {
    var userId = getUserId();
    var bankInfo;

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'bankName',
        title: '开户行',
    }, {
        field: 'realName',
        title: '开户名称',
    }, {
        field: 'bankcardNumber',
        title: '账号',
        formatter: function(v, data){
            bankInfo = data;
            return v;
        }
    }];
    buildList({
        columns: columns,
        searchParams: {
            'userId': userId,
            'start': 1,
            'limit': 10
        },
        pageCode: "802015",
    });
    $('#addBtn').off("click").click(function() {
        if(bankInfo){
            toastr.warning("只能绑定一张银行卡");
            return;
        }
        window.location.href = "./account_info_addedit.html";
    });

})
