$(function() {
  var code = getQueryString('code');
    var companyCode = getCityId(getUserId());

    var fields = [ {
        title: '分类名称',
        field: 'name',
      require:true
        },
        {
            title: '图片',
            field: "pic",
            type: 'img',

        },
        {
           type: 'hidden',
           field: 'type',
           value: '2',
           required: true
       },
        {
           type: 'hidden',
           field: 'parentCode',
           value: '0',
           required: true
       },
        {
            title: '次序',
            field: 'orderNo',
           defaultValue:'0',
           hidden:true,
        },



];

buildDetail({
    fields: fields,
    code: code,
    addCode: '808000',
    editCode: '808002',
    detailCode: '808006',

});
});
