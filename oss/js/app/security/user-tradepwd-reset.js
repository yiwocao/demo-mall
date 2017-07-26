$(function() {
    $('#idKind').renderDropdown(Dict.getIDKindName());

    $("#smsBtn").click(function() {
        //var url = $("#basePath").val()+"/gene/smscaptcha/send";
        var data = { "bizType": "805050" };
        //doPostAjax(url, data, doSuccessBack2);
        reqApi({
            code: "805050",
            json: data
        }).then(function(data) {
            sucDetail();
        });
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
        // var url = $("#basePath").val() + "/user/tradePwd/reset";
        // doPostAjax(url, data, doSuccessBack);
        reqApi({
            code: "805050",
            json: data
        }).then(function(data) {
            sucDetail();
        });
    });

    //入参合法性校验
    $("#jsForm").validate({
        rules: {
            newTradePwd: {
                required: true,
                maxlength: 16
            },
            smsCaptcha: {
                required: true,
                maxlength: 8
            },
            idKind: {
                required: true,
                maxlength: 2
            },
            idNo: {
                required: true,
                maxlength: 32
            }
        },
        messages: {
            newTradePwd: {
                required: "请输入新交易密码",
                maxlength: jQuery.format("新交易密码不能大于{0}个字符")
            },
            smsCaptcha: {
                required: "请输入短信验证码",
                maxlength: jQuery.format("短信验证码不能大于{0}个字符")
            },
            idKind: {
                required: "请输入证件类型",
                maxlength: jQuery.format("证件类型不能大于{0}个字符")
            },
            idNo: {
                required: "请输入证件号",
                maxlength: jQuery.format("证件号不能大于{0}个字符")
            },
        }
    });
});

function doSuccessBack(res) {
    if (res.success == true) {
        alert("操作成功");
        sessionStorage.setItem('activeMenu', 'user.htm');
        $('.nav li a', window.parent.frames['topFrame'].document).first().trigger('click');
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