$(function() {

    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'companyName',
        title: '名称'
    }, {
        field: 'jtTotal',
        title: '今日发帖数',
    }, {
        field: 'ztTotal',
        title: '昨日发帖数',
    }, {
        field: 'qbTotal',
        title: '帖子总数',
    }, {
        field: 'userTotal',
        title: '用户总数',
    }, {
        field: 'maxRead',
        title: '帖子最高浏览数',
    }, {
        field: 'avgRead',
        title: '帖子平均浏览数',
        formatter: function(v){
            return v && v.toFixed(0) || 0;
        }
    }];
    buildList({
        columns: columns,
        pageCode: "610125"
    });

});
