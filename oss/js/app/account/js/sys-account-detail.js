$(function() {
    var columns = [{
        field: '',
        title: '',
        checkbox: true
    }, {
        field: 'ajNo',
        title: '明细编号',
        align: 'middle',
        valign: 'middle',
        sortable: false,
        formatter: function(v, r) {
            return v ? v : r.afjNo;
        }
    }, {
        field: 'bizType',
        title: '业务类型',
        align: 'middle',
        valign: 'middle',
        sortable: false,
        formatter: Dict.getNameForList('biz_type'),
    }, {
        field: 'refNo',
        title: '相关单号',
        align: 'middle',
        valign: 'middle',
        sortable: false
    }, {
        field: 'transAmount',
        title: '变动数值',
        align: 'middle',
        valign: 'middle',
        sortable: false,
        formatter: moneyFormatter
    }, {
        field: 'preAmount',
        title: '变动前数值',
        align: 'middle',
        valign: 'middle',
        sortable: false,
        formatter: moneyFormatter
    }, {
        field: 'postAmount',
        title: '变动后数值',
        align: 'middle',
        valign: 'middle',
        sortable: false,
        formatter: moneyFormatter
    }, {
        field: 'createDatetime',
        title: '产生时间',
        align: 'middle',
        valign: 'middle',
        sortable: false,
        formatter: dateFormatter
    }, {
        field: 'workDate',
        title: '对账日期',
        align: 'middle',
        valign: 'middle',
        sortable: false
    }, {
        field: 'remark',
        title: '备注',
        align: 'middle',
        valign: 'middle',
        sortable: false
    }];
    buildList({
        router: 'sys_account_detail',
        columns: columns,
        pageCode: '',
    });

});