$(function() {
    var companyCode = getCityId(getUserId());

    var fields = [ {
        title: '负责人',
        field: 'loginName',
        required: true,

        maxlength: 255
    },  {
        field: 'mobile',
        title: '联系电话',

        required: true,
    },
    {
        field: 'kind',
         defaultValue:'f2',
 hidden:true,

    },
        {
        title: '备注',
        field: 'remark',

        maxlength: 255
    }];


    buildDetail({
        fields: fields,
             addCode: '805042',
    });
});
