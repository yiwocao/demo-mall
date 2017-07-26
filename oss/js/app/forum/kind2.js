$(function() {

    var branch = getQueryString('b') || "";


    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'name',
        title: '名称',
        search: true
    }, {
        field: 'orderNo',
        title: '次序'
    }];
    buildList({
        router: 'kind2',
        columns: columns,
        pageCode: "610025",
        deleteCode: "610021",
        searchParams: {
            'companyCode': branch ? getCityId(getUserId()) : '0'
        },
        urlParams: {
            b: branch
        },

    });
})