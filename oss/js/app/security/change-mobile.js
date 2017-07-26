$(function() {
    $("#smsBtn").click(function() {
        if (!$("#jsForm").validate().element($('#newMobile'))) {
            return;
        }
        // var url = $("#basePath").val() + "/gene/changemobile/send";
        var data = { "mobile": $("#newMobile").val(), "bizType": "805047" };
        // doPostAjax(url, data, doSuccessBack2);
        reqApi({
            code: "",
            json: data
        }).then(function(data) {
            location.href = '../user.html';
        })
    });

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
        // var url = $("#basePath").val()+"/user/editMobile";
        // doPostAjax(url, data, doSuccessBack);
        data.userId = sessionStorage.getItem("userId");
        reqApi({
            code: '',
            json: data
        }).then(function(data) {
            location.href = "../user.html";
        });
    });


    //入参合法性校验
    $("#jsForm").validate({
        rules: {
            newMobile: {
                required: true,
                maxlength: 16
            },
            smsCaptcha: {
                required: true,
                maxlength: 8
            },
            tradePwd: {
                required: true,
                maxlength: 32
            },
        },
        messages: {
            newMobile: {
                required: "请输入新的手机号",
                maxlength: jQuery.format("手机号不能大于{0}个字符")
            },
            smsCaptcha: {
                required: "请输入短信验证码",
                maxlength: jQuery.format("短信验证码不能大于{0}个字符")
            },
            tradePwd: {
                required: "请输入密码",
                maxlength: jQuery.format("密码不能大于{0}个字符")
            },
        }
    });
});

function doSuccessBack(res) {
    if (res.success == true) {
        alert("操作成功");
        window.location.href = $("#basePath").val() + "/security/user.htm";
    } else {
        alert(res.msg);
    }
}

function doSuccessBack2(res) {
    if (res.success == true) {
        alert("短信发送成功");
    } else {
        alert(res.msg);
    }
}