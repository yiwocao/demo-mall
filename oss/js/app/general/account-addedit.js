//页面初始化
$(function(){
	var code = getQueryString('code');
	$('#status').renderDropdown(Dict.getName('account-status'));
	//新增修改判断
	if(isBlank(code)){
		$("#operate").val("add");
	}else{
		$("#operate").val("edit");
		$("#operContent").text("修改系统参数");
		var data = {"code":code};
		var url = $("#basePath").val()+"/account/datailaccount";
		doGetAjax(url, data, doGetDetailBack);
	}
	
	//提交
	$('#subBtn').click(function() {
	    if(!$("#jsForm").valid()){
			return false;
		}
		var data = $('#jsForm').serializeObject();
		data['code']=$('#code').html();
		var operator = $("#operate").val() != "edit"?"add":"edit";
		var url = $("#basePath").val()+"/account/account/" + operator;
		doPostAjax(url, data, doSuccessBack);
	});
	
	//返回
	$('#backBtn').click(function() {
		location.href = $("#basePath").val()+"/general/recipient_account.htm";
	});
	
	//入参合法性校验
	$("#jsForm").validate({
		rules: {
			companyCode: {
				required: true,
				maxlength: 32
			},
			subbranch: {
				required: true,
				maxlength: 255
			},
			cardNo: {
				required: true,
				maxlength: 64
			},
			status: {
				required: true,
				maxlength: 2
			}
		},
		messages: {
			companyCode: {
				required: "请输入开户公司",
				maxlength: jQuery.format("开户公司不能大于{0}个字符")
			},
			subbranch: {
				required: "请输入开户银行",
				maxlength:jQuery.format("开户银行不能大于{0}个字符")
			},
			cardNo: {
				required: "请输入账号",
				maxlength:jQuery.format("账号不能大于{0}个字符")
			},
			status: {
				required: "请选择状态",
				maxlength:jQuery.format("状态不能大于{0}个字符")
			}
		}
	});
});

function doGetDetailBack(res){
	if (res.success) {
		result = res.data;
		$("#code").html(result.code);
		$("#companyCode").val(result.companyCode);
		$("#subbranch").val(result.subbranch);
		$("#cardNo").val(result.cardNo);
		$("#status").val(result.status);
	}else{
		alert(res.msg);
	}
}

function doSuccessBack(res) {
	if (res.success == true) {
		alert("操作成功");
		window.location.href = $("#basePath").val()+"/general/recipient_account.htm";
	}else{
		alert(res.msg);
	}
}