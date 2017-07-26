$(function() {

    var code = getQueryString('code');

    var fields = [{
        title: '针对',
        field: 'parentCode',
        readonly: true,
        formatter: function(v, r) {
            if (r.post) {
                return '帖子：' + text3dot(r.post.title || r.post.content, 10);
            } else if (r.parentComment) {
                return '评论：' + text3dot(r.post.content, 10);
            }
        }
    }, {
        title: '内容',
        field: 'content',
        readonly: true
    }, {
        title: '评论人',
        field: 'nickname',
        readonly: true
    }, {
        title: '评论时间',
        field: 'commDatetime',
        readonly: true,
        formatter: dateTimeFormat
    }, {
        title: '备注',
        field: 'remark',
        readonly: true
    }, {
        title: '状态',
        field: 'status',
        readonly: true,
        type: 'select',
        key: 'comment_status'
    }, {
        title: '复核人',
        field: 'approver',
        readonly: true
    }, {
        title: '复核时间',
        field: 'approveDatetime',
        readonly: true,
        formatter: dateTimeFormat
    }, {
        title: '意见说明',
        field: 'approveNote',
        //value: '',
        required: true,
        readonly: true
    }];

    buildDetail({
        fields: fields,
        code: code,
        detailCode: ' ',

    });
});