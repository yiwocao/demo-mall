$(function() {
    var fields = [{
        field: 'jtTotal',
        title: '今日发帖数',
        readonly: true,
    }, {
        field: 'ztTotal',
        title: '昨日发帖数',
        readonly: true,
    }, {
        field: 'qbTotal',
        title: '帖子总数',
        readonly: true,
    }, {
        field: 'userTotal',
        title: '用户总数',
        readonly: true,
    }, {
        field: 'maxRead',
        title: '帖子最高浏览数',
        readonly: true,
    }, {
        field: 'avgRead',
        title: '帖子平均浏览数',
        readonly: true,
        formatter: function(v){
            return v && v.toFixed(0) || 0;
        }
    }];

    var options = {
        fields: fields,
        code: {
            companyCode: getCityId(getUserId())
        },
        detailCode: '610124',
        buttons: []
    };
    buildDetail(options);
});
