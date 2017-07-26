$(function() {

    //var branch = getQueryString('b') || "";
    //var cityId = branch ? 0 : getCityId(getUserId());

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
        search: true
    }, {
        title:"大板块模板",
        field:"parentCode",
        listCode: '610017',
        type: 'select',
        keyName: 'code',
        valueName: 'name',
        search:true,
        visible:false
    },{
        field: 'bplateCode',
        title: '大板块模板',
        listCode: '610017',
        type: 'select',
        keyName: 'code',
        valueName: 'name'
    }, {
        field: "orderNo",
        title: '次序',
    }];

    buildList({
        router: 'board',
        columns: columns,
        pageCode: '610035',
        deleteCode: "610031",
        // searchParams: {
        //     'siteCode': cityId
        // },
        // urlParams: {
        //     b: branch
        // }
    });
});