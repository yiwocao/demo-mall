$(function() {
    var cityId = getCityId(getUserId()) ? getCityId(getUserId()) : '';

    var columns = [{
        field: 'companyCode',
        title: '来自',
        search: true,
        listCode: '806013',
        keyName: 'code',
        valueName: 'name',
        type: 'select'
    }, {
        title: '总帖子',
        field: 'postNum',
    }, {
        title: '总人数',
        field: 'userNum',
    }, {
        title: '总pv',
        field: 'pageViewNum',
    }, ];
    buildList({
        columns: columns,
        searchParams: {
            companyCode: cityId
        },
        pageCode: "610408",
    });
});