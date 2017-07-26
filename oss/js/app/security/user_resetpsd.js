$(function() {
    $("#userId").html(getQueryString("userId"));
    $("#loginName").html(decodeURI(getQueryString("loginName")));
    //提交
    $('#subBtn').click(function() {
        if (!$("#jsForm").valid()) {
            return false;
        }
        var data = {};
        var t = $('form').serializeArray();
        $.each(t, function() {
            data[this.name] = this.value;
        });
        data["userId"] = $("#userId").html();
        // var url = $("#basePath").val()+"/user/pwd/resetpsd";
        // doPostAjax(url, data, doSuccessBack);
        reqApi({
            code: "",
            json: data
        }).then(function(data) {
            sucDetail();
        });
    });

    //返回
    $('#backBtn').click(function() {
        // location.href = $("#basePath").val() + "/security/user.htm";
        goback();
    });

    //入参合法性校验
    $("#jsForm").validate({
        rules: {
            adminTradePwd: {
                required: true,
                maxlength: 12,
                minlength: 6
            }
        },
        messages: {
            adminTradePwd: {
                required: "请输入管理员交易密码",
                maxlength: jQuery.format("密码不能大于{0}个字符"),
                minlength: jQuery.format("密码不能小于{0}个字符")
            }
        }
    });
});