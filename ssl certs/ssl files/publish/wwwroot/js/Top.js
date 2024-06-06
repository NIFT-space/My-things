//START TOP JS

    /*PROCESS DATE DROPDOWN*/
    $(function ddl() {
            var ddlCustomers = $("#DDL_Date");
    var Dia = $('#DDL_Date').val();
    $.ajax({
        type: "GET",
    url: "http://localhost:44300GetControlsData/GetProcessDate",
    dataType: "JSON",
    data: {dia: Dia },
    success: function (response) {
                    for (var i = 0; i < response.pdate.length; i++) {
        ddlCustomers += '<option value="' + response.pdate[i] + '">' + response.pdate[i] + '</option>';
                    }
    $('#DDL_Date').append(ddlCustomers);
                }
            });
    });



function GetYesOrNo() {
    var ddlbank = document.querySelector('#DDL_Bank');
    var option = ddlbank.value;

    $.ajax({
        url: '/BkTrSc?handler=GetDdlbank',
        type: 'GET',
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        mimeType: 'text/html',
        data: { getOption: option },
        success: function (returnValue) {
            alert(returnValue);
        }
    });
};