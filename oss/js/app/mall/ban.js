$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    },{
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
        title: "备注",
        field: "remark"
    }];
    var searchParams = { start: '0',limit:'10'};
    buildList({
        columns: columns,
        searchParams: searchParams,
        pageCode: "808073",
    });
})
