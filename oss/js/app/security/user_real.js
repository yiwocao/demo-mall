$(function() {
    $("#userId").html(getQueryString("userId"));
    $("#loginName").html(decodeURI(getQueryString("loginName")));
    $('#idKind').renderDropdown(Dict.getIDKindName());

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
        // var url = $("#basePath").val()+"/user/pwd/real";
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
            idNo: {
                required: true,
                maxlength: 18,
            },
            idKind: {
                required: true,
            },
            realName: {
                required: true,
                maxlength: 12,
            },
            remark: {
                required: false,
                maxlength: 20,
            }
        },
        messages: {
            idNo: {
                required: "请输入身份证号",
                maxlength: jQuery.format("身份证号不能大于{0}个字符"),
            },
            idKind: {
                required: "请选择证件类型",
            },
            realName: {
                required: "请输入真实姓名",
                maxlength: jQuery.format("真实姓名不能大于{0}个字符"),
            },
            remark: {
                maxlength: jQuery.format("备注不能大于{0}个字符"),
            }
        }
    });
});