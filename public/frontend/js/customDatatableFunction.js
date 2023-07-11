    $(document).ready(function() { 


 
    $('#subadminTable').DataTable({ 
         responsive: true,
        "bPaginate": false,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3, "asc" ]],
         "columnDefs": [
            { "bSortable": false, "aTargets": [4] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Sub Admin", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Sub Admin", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        , {
            extend: "pdf", title: "Sub Admin",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Sub Admin</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
$('#userTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,5,4, "asc" ]],
         "columnDefs": [
            { "bSortable": false, "aTargets": [6] },
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "User", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "User", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        , {
            extend: "pdf", title: "User",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> User</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
$('#professorTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4,5, "asc" ]],
         "columnDefs": [
            { "bSortable": false, "aTargets": [6] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Professor List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Professor List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        , {
            extend: "pdf", title: "Professor List",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Professor List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
$('#universityTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4,5, "asc" ]],
         "columnDefs": [
            { "bSortable": false, "aTargets": [6] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "University List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "University List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        , {
            extend: "pdf", title: "University List",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> University List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });
$('#countryTable').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2, "asc" ]],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Country List", exportOptions: {
                columns: [':visible'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Country List", exportOptions: {
                columns: [':visible'],
                       },className: "btn-sm prints",footer: true,
        }
        , {
            extend: "pdf", title: "Country List",exportOptions: {
                columns: [':visible'],
                       }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        }
        , {
            extend: "print",exportOptions: {
                columns: [':visible'],
                       },title: "<center> Country List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });

} );
