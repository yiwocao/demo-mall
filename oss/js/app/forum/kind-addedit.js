$(function() {

    var code = getQueryString('code');
    var view = getQueryString('v');
    // var branch = getQueryString('b');

    var fields = [{
        hidden: true,
        field: 'type',
        value: '1'
    }, {
        hidden: true,
        field: 'parentCode',
        value: '0'
    }, {
        title: '名称',
        field: 'name',
        required: true,
        maxlength: 32,
        readonly: view
    }, {
        title: '次序',
        field: 'orderNo',
        required: true,
        maxlength: 10,
        number: true,
        readonly: view
    }];

    buildDetail({
        fields: fields,
        code: code,
        view: view,
        addCode: '610010',
        editCode: '610012',
        detailCode: '610016',
    });
    // $('#editBtn').click(function() {
    //     var selRecords = $('#tableList').bootstrapTable('getSelections');
    //     if (selRecords.length <= 0) {
    //         toastr.info("请选择记录");
    //         return;
    //     } else if (selRecords.length >= 2) {
    //         toastr.info("请选择一条记录");
    //         return;
    //     }

    //     var codeParams = '';
    //     if (options.uid) {

    //         options.uid.forEach(function(i) {
    //             codeParams += '&' + i + '=' + selRecords[0][i];
    //         });
    //     }
    //     window.location.href = options.router + "_addedit.html?code=" + (selRecords[0].code || selRecords[0].id) + urlParamsStr + codeParams;
    // });






});