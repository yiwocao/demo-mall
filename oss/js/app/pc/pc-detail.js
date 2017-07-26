$(function() {

	var fields = [{
		field: 'isDefault',
		type: 'hidden',
		defaultValue: '0',
		required: true
	}, {
		field: 'type',
		value: "1",
		type: 'hidden',
		required: true
	}, {
		title: '名称',
		field: 'name',
		required: true,
		maxlength: 32,
		type: 'hidden',
	}, {
		title: '负责人',
		field: 'userId',
		type: 'hidden',
	}, {
		title: '次序',
		field: 'orderNo',
		required: true,
		number: true,
		maxlength: 10,
		type: 'hidden',
	}, {
		title: '联系方式',
		field: 'mobile',
		required: true,
		mobile: true,
		type: 'hidden',
	}, {
		title: '邮箱',
		field: 'email',
		required: true,
		email: true,
		maxlength: 30,
		type: 'hidden',
	}, {
		title: "省",
		field: 'province',
		required: true,
		maxlength: 100,
		type: 'hidden',
	}, {
		title: '市',
		field: 'city',
		single: true,
		type: 'hidden',
	}, {
		title: '区',
		field: 'area',
		single: true,
		type: 'hidden',
	}, {
		title: "详细地址",
		field: 'address',
		required: true,
		maxlength: 100,
		type: 'hidden',
	}, {
		title: 'logo',
		field: 'logo',
		type: 'img',
		single: true,
		required: true,
		//type: 'hidden',
	}, {
		title: '二维码',
		field: 'qrCode',
		type: 'img',
		single: true,
		type: 'hidden',
	}, {
		title: '服务时间',
		field: 'remark',
		type: 'hidden',
		maxlength: 250,
	}, {
		title: '老论坛链接',
		field: 'domain',
		required: true,
	}, {
		title: 'Footer配置',
		field: 'copyright',
		required: true,
		isNotFace:false,
	}, {
		title: "城市网介绍",
		field: "description",
		required: true,
		type: 'textarea',
		isNotFace:false,
	}];


	var options = {
		fields: fields,
		code: {
			userId: getUserId()
		},
		detailCode: '806011',
	};

	buildDetail(options);
	$('#subBtn').off("click").click(function() {
		if ($('#jsForm').valid()) {
			var data = $('#jsForm').serializeObject();
			$('#jsForm').find('.btn-file [type=file]').parent().next().each(function(i, el) {
				var values = [];
				var imgs = $(el).find('.img-ctn');
				imgs.each(function(index, img) {
					values.push($(img).attr('data-src') || $(img).find('img').attr('src'));
				});

				data[el.id] = values.join('||');
			});

			data['id'] = data['code'];
			reqApi({
				code: '806004',
				json: data
			}).done(function(data) {
				toastr.success('操作成功');
			});
		}
	});
});