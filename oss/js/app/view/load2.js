$(function() {

	//var code = getQueryString('code');
	//var code = 17;
	var code;
	reqApi({
		code: '610107',
		json: {
			//"location"："0","company_code":getCityId(getUserId())
			"location": "0",
			"companyCode": getCityId(getUserId())
		},
		sync: true
	}).done(function(data) {
		code = data[0].code;
	});
	var isBranch = !!getQueryString('b');
	var view = getQueryString('v');
	var cityName = getCityName(getUserId());
	var belong = {
		title: '属于',
		field: 'belong',
		required: true,
		type: 'select',
		data: {
			"2": "地方",
			"3": "地方私有导航"
		},
		key: 'view_belong'
	};
	if (code && view) {
		belong.formatter = function(v, data) {
			if (v == "2") {
				return "地方"
			} else if (v == "3") {
				return "地方私有导航"
			} else {
				return cityName;
			}
		}
	} else if (code) {
		belong.formatter = function(v, data) {
			if (v != "3" && v != "2") {
				return "3";
			}
			return v;
		}
	}

	var innerSelect = {
		'page:mall': '商城页',
		'page:board': '版块页'
	};

	if (!code && isBranch) {
		$('.form-title').after('<div class="alert-warning">请先修改类型为菜单的记录，方可新增该菜单的引流</div>');
	} else {
		innerSelect['page:signin'] = '签到';
	}

	var fields = [{
		field: 'status',
		type: 'hidden',
		value: '1'
	}, {
		field: 'location',
		type: 'hidden',
		value: '0'
			//afterSet: function(v) {
			//    if (v == 0) {
			//        $("#orderNo").parent().hide();
			//    }
			//}
	}, {
		field: 'companyCode',
		type: 'hidden',
		value: isBranch ? getCityId(getUserId()) : '0'
	}, {
		field: 'isCompanyEdit',
		type: 'hidden',
		value: isBranch ? '1' : '0'
	}, {
		field: 'type',
		title: '类型',
		type: 'select',
		hidden: true,
		key: 'view_type',
		defaultValue: isBranch ? '4' : '',
		afterSet: function(v) {
			if (v == 1) {
				$('#orderNo').parent().hide();
			}
		}
	}, {
		title: '名字',
		field: 'name',
		required: true,
		maxlength: 30
	}, {
		title: '次序',
		field: 'orderNo',
		type: 'hidden',
		required: true,
		number: true,
		maxlength: 10
	}, {
		title: 'url类型',
		field: 'urlKind',
		required: true,
		type: 'hidden',
		data: {
			'1': '内部',
			'2': '外部'
		},
		onChange: function(r) {
			if (r == 1) {
				$('#url1').parent().show();
				$('#url').parent().hide();
				$('#plateCode').parent().hide();
			} else if (r == 2) {
				$('#url1').parent().hide();
				$('#url').parent().show();
				$('#plateCode').parent().hide();
			} else {
				$('#url1').parent().hide();
				$('#url').parent().hide();
				$('#plateCode').parent().hide();
			}
			$('#url1').val('');
			$('#plateCode').val('');
			$('#url').val('');
		},
		value: function(r) {
			if (r.url.indexOf('page:') == -1) {
				return '2';
			} else {
				return '1';
			}
		}
	}, {
		title: '内部页',
		field: 'url1',
		required: true,
		type: 'hidden',
		data: innerSelect,
		hidden: code,
		onChange: function(r) {
			$('#url').val(r);
			if (r == 'page:board') {
				$('#plateCode').parent().show();
			} else {
				$('#plateCode').parent().hide();
			}
		},
		value: function(r) {
			if (r.url.indexOf('page:') == -1) {
				return '';
			} else {
				return r.url.split(',')[0];
			}
		}
	}, {
		title: '版块',
		field: 'plateCode',
		listCode: '610048',
		keyName: 'code',
		valueName: 'name',
		type: 'select',
		required: true,
		hidden: true,
		onChange: function(r) {
			$('#url').val('page:board,code:' + r);
			// var obj = new Object();
			// obj.page = "board";
			// obj.code = r;
			// // console.log(JSON.stringify(obj));
			// $('#url').val(JSON.stringify(obj));
		},
		value: function(r) {
			if (r.url.indexOf('page:') == -1) {
				return '';
			} else {
				return r.url.split(',').length > 1 && r.url.split(',')[1].replace('code:', '') || '';
			}
		}
	}, {
		title: 'url',
		field: 'url',
		hidden: code,
		required: true,
	}, {
		title: '图片',
		field: 'pic',
		type: 'img',
		single: true,
		required: true
	}, belong, {
		title: "备注",
		field: "remark",
		maxlength: 255,
		readonly: view
	}];

	// var editCode11 = isBranch ? "610101" : "610100";
	var options = {
		fields: fields,
		code: code,
		//  editCode: editCode11,
		detailCode: '610106',
		view: view
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

			// for (var i = 0, len = fields.length; i < len; i++) {
			//     var item = fields[i];
			//     if (item.equal && (!$('#' + item.field).is(':hidden') || !$('#' + item.field + 'Img').is(':hidden'))) {
			//         data[item.equal] = $('#' + item.field).val() || $('#' + item.field).attr('src');
			//     } else if (item.emptyValue && !data[item.field]) {
			//         data[item.field] = item.emptyValue;
			//     } else if (item.readonly && item.pass) {
			//         data[item.field] = $('#' + item.field).attr('data-value') || $('#' + item.field).html();
			//     }
			//     if (item.type == 'select' && item.passValue) {
			//         data[item.field] = $('#' + item.field).find('option:selected').html();
			//     }
			//     // if (item.type == 'img' && item.passValue) {
			//     //     data[item.field] = $('#' + item.field).find('option:selected').html();
			//     // }
			//     if (item.type == "checkbox") {
			//         data[item.field] = $.isArray(data[item.field]) ? data[item.field].join(",") : data[item.field];
			//     }
			// }
			data['id'] = data['code'];
			reqApi({
				code: '610100',
				json: data
			}).done(function(data) {
				toastr.success('操作成功');
			});
		}
	});
});