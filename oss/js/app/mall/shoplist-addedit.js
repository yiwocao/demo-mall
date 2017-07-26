$(function() {
      var code = getQueryString('code');

    var companyCode = getCityId(getUserId());
    var fields = [ {
        title: '商店名称',
        field: 'name',
        required: true,

        maxlength: 255
    },  {
        field: 'bookMobile',
        title: '商铺电话',

        required: true,
    },
    {
       type: 'hidden',
       field: 'storeCode',
       value: code,
   },
    {

        field: "owner",
        title: '负责人',
        listCode: "805055",
        keyName: 'userId',
        valueName: "loginName",
        type:'select',
        params: {
            kind: "f2",

        },
      },
        {

            field: "mobile",
            title: '负责人电话',
              required: true,
          },
    {
        // field: "category",
        field: "type",
        title: '商店类别',
        pageCode: "808007",
        keyName: 'code',
        valueName: "name",
        type:'select',

    },
    {
        title: '店铺图片',
        field: 'pic',
        type: 'img',
    },

    {
        field: 'address',
        title: '具体地址',
        required: true,
        maxlength: 255
    },
    {
        field: 'description',
        title: '店铺描述',
        required: true,
        maxlength: 255
    },
        {
        title: '备注',
        field: 'remark',

        maxlength: 255
    }];

  buildDetail
  ({
        fields: fields,
        code: code,
      addCode: '808200',
      editCode: '808208',
      detailCode:'808216',
    });
});
