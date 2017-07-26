$(function() {
    $("#userId").html(getQueryString("userId"));
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
        // var url = $("#basePath").val() + "/user/tradePwd/change";
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
        goback();
    });

    //入参合法性校验
    $("#jsForm").validate({
        rules: {
            oldLoginPwd: {
                required: true,
                maxlength: 12,
                minlength: 6
            },
            newLoginPwd: {
                required: true,
                maxlength: 12,
                minlength: 6
            },
            remark: {
                required: false,
                maxlength: 32,
            }
        },
        messages: {
            oldLoginPwd: {
                required: "请输入旧交易密码",
                maxlength: jQuery.format("旧交易密码不能大于{0}个字符"),
                minlength: jQuery.format("旧交易密码不能小于{0}个字符")
            },
            newLoginPwd: {
                required: "请输入新交易密码",
                maxlength: jQuery.format("新交易密码不能大于{0}个字符"),
                minlength: jQuery.format("新交易密码不能小于{0}个字符")
            },
            remark: {
                maxlength: jQuery.format("备注不能大于{0}个字符"),
            }
        }
    });
});