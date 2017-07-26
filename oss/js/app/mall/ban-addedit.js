$(function() {
    var code = getQueryString('code');

    var fields = [{
        field: 'name',
        title: '名称',
    }, {
        field: 'orderNo',
        title: '相对位置编号',
    },
    {
        field: 'url',
        title: 'url',
    },

{
        title: '图片',
        field: 'pic',
        type: 'img',
        single: true,
    },{
        title: "",
        field: "location",
        value: 1,
        type: "hidden"
    },
    {
          title: "备注",
          field: "remark"
      }
 ];


    buildDetail({
        fields: fields,
        code: code,
        addCode: '808010',
        editCode: '808071',
        detailCode: '808074',

    });
});
