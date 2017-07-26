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
    }, {
        title: "开始时间",
        title1: "开始时间",
        title2: "结束时间",
        field: "dateStart",
        type1: "date",
        field1: "dateStart",
        field2: "dateEnd",
        required: true,
        search: true,
    }, {
        title: '结束时间',
        field: 'dateEnd',
        required: true,
    }, {}];
    buildList({
        columns: columns,
        searchParams: {
            companyCode: cityId
        },
        pageCode: "610408",
    });
});