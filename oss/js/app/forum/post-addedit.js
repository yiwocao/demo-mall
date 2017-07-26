$(function() {
    var locationDict = Dict.getNameForList("post_location");
    var code = getQueryString('code');
    //var type = getQueryString('type'); // 1置顶、2精华、3转版、4锁帖、5头条

    var fields = [{
            title: '标题',
            field: 'title',
            readonly: true
        }, {
            title: '内容',
            field: 'content',
            readonly: true
        },
        // {
        //     title: '图片',
        //     field: 'picArr',
        //     readonly: true,
        //     type: 'img'
        // }, 
        {
            field: 'location',
            title: '位置',
            //key: 'post_location',
            type: 'select',
            readonly: true,
            formatter: function(data) {
                var arr = data.split(/,/),
                    str = "";
                for (var i = 0; i < arr.length; i++) {
                    str += locationDict(arr[i]) + "、";
                }
                return i && str.substr(0, str.length - 1) || "";
            }
        }, {
            title: '发帖人',
            field: 'nickname',
            readonly: true
        }, {
            title: '发帖时间',
            field: 'publishDatetime',
            readonly: true,
            formatter: dateTimeFormat
        }, {
            title: '状态',
            field: 'status',
            readonly: true,
            type: 'select',
            key: 'post_status'
        }, {
            field: 'plateCode1',
            title: '当前版块',
            type: 'select',
            '[value]': 'plateCode',
            readonly: true,
            formatter: function(v, data) {
                return data.plateCode
            },
            listCode: '610047',
            keyName: "code",
            valueName: 'name',

        }, {
            title: '转版到',
            field: 'plateCode',
            type: 'select',
            listCode: '610047',
            params: {
                companyCode: getCityId(getUserId()),
            },
            keyName: 'code',
            valueName: 'name',
            searchName: 'name',
            required: true,
        }
    ];
    var options = {
        fields: fields,
        code: code,
        detailCode: "610201",
        //editCode: '610118'
    };
    options.buttons = [{
        title: '确定',
        handler: function() {
            if ($('#jsForm').valid()) {
                var data = {};
                data['codeList'] = [code];
                data["plateCode"] = $("#plateCode").val();
                reqApi({
                    code: "610118",
                    json: data
                }).done(function() {
                    sucDetail();
                });
            }
        }
    }, {
        title: '返回',
        handler: function() {
            goBack();
        }
    }];
    buildDetail(options);
});