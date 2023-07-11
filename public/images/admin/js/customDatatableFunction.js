    $(document).ready(function() { 


    $('#subadminTable').DataTable({ 
         responsive: true,
        "bPaginate": false,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 4 },

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
        // , {
        //     extend: "pdf", title: "Sub Admin",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Sub Admin</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],

    });

    $('#faqTable').DataTable({ 
         responsive: true,
        "bPaginate": false,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4,5, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 6 },

            { "bSortable": false, "aTargets": [6] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Faq Table", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Faq Table", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Faq Table",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Faq Table</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });



$('#userTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         // "aaSorting": [[ 0,1,3,4,5,6,7,8,9, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 6 },
         { "bSortable": false, "aTargets": [6,2] },

       
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
        // , {
        //     extend: "pdf", title: "User",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> User</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": [],
         "aaSorting": []
    });
    $('#userReportTable').DataTable({ 
            responsive: true,
            "bPaginate": true,
            "bStateSave": true,
            "searching": true,
             // "aaSorting": [[ 0,1,3,4,5,6,7,8,9, "asc" ]],
             "columnDefs": [
             { responsivePriority: 1, targets: 8 },
             { "bSortable": false, "aTargets": [8,2] },
    
           
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
            // , {
            //     extend: "pdf", title: "User",exportOptions: {
            //         columns: [':visible :not(:last-child)'],
            //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
            // }
            , {
                extend: "print",exportOptions: {
                    columns: [':visible :not(:last-child)'],
                           },title: "<center> User</center>", className: "btn-sm prints",footer: true, 
            },'colvis'  
            ],
            "order": [],
             "aaSorting": []
        });
$('#professorReviewTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
         "autoWidth": true,
        "searching": true,
         "aaSorting": [[ 0,1,3,4,5,6,7, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 8 },
         { "bSortable": false, "aTargets": [8] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Professor Review", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Professor Review", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Professor Review",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Professor Review</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []

        

    });
$('#reportCommentTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
         "autoWidth": true,
        "searching": true,
         "aaSorting": [[ 0,1,3,4, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 5 },
         { "bSortable": false, "aTargets": [5] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Comment List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Comment List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Comment List",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Comment List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []

        

    });
$('#professorReviewCommentTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
         "autoWidth": false,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 4 },
         { "bSortable": false, "aTargets": [4] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Professor Review Comment", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Professor Review Comment", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Professor Review Comment",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Professor Review Comment</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []

        

    });
$('#teacherReviewCommentTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
         "autoWidth": false,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 4 },
         { "bSortable": false, "aTargets": [4] },
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Teacher Review Comment", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Teacher Review Comment", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Teacher Review Comment",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Teacher Review Comment</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []
    });
$('#universityReviewCommentTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
         "autoWidth": false,
        "searching": true,
         "aaSorting": [[ 0,1,2,3,4, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 4 },
         { "bSortable": false, "aTargets": [4] },
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "University Review Comment", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "University Review Comment", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "University Review Comment",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> University Review Comment</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []
    });
// $('#professorReviewCommentTable').addClass('nowrap');
$('#teacherReviewTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,3,4,5,6, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 7},
         { "bSortable": false, "aTargets": [7] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Teacher Review", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Teacher Review", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Teacher Review",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Teacher Review</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []

        

    });
$('#reportedStoriesTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,3,4,5,6, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 7},
         { "bSortable": false, "aTargets": [7] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Reported Stories List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Reported Stories List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Reported Stories List",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Reported Stories List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []

        

    });
$('#universityReviewTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,3,4,5,6, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 7},
         { "bSortable": false, "aTargets": [7] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "University Review", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "University Review", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "University Review",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> University Review</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []
    });
$('#teacherSuggestionTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,3, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 0},
         { "bSortable": false, "aTargets": [4] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Suggestion", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Suggestion", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Teacher Suggestion",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Suggestion</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []
    });

$('#professorSuggestionTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,3, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 4},
         { "bSortable": false, "aTargets": [4] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Professor Suggestion", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Professor Suggestion", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Professor Suggestion",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Professor Suggestion</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []
    });

$('#universitySuggestionTable').DataTable({ 
        responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 0,1,3, "asc" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 4},
         { "bSortable": false, "aTargets": [4] },
        ],
         
       

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Professor Suggestion", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Professor Suggestion", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        // , {
        //     extend: "pdf", title: "Professor Suggestion",exportOptions: {
        //         columns: [':visible :not(:last-child)'],
        //                }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        // }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Professor Suggestion</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        "order": []
    });

    $('#allcommentTrack').DataTable({ 
         responsive: true,
        "bPaginate": true,
        "bStateSave": true,
        "searching": true,
         "aaSorting": [[ 3, "DESC" ]],
         "columnDefs": [
         { responsivePriority: 1, targets: 1},

            //  { responsivePriority: 1, targets: -5 },
            { "bSortable": false, "aTargets": [0,1,2,4,5] },

       
        ],

       'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
        lengthChange: true,
    /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
         dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
            extend: "copy", className: "btn-sm prints"
        }
        ,*/ {
            extend: "csv", title: "Comment List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints",footer: true,
        }
        , {
            extend: "excel", title: "Comment List", exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },className: "btn-sm prints",footer: true,
        }
        , {
            extend: "pdf", title: "Comment List",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
        }
        , {
            extend: "print",exportOptions: {
                columns: [':visible :not(:last-child)'],
                       },title: "<center> Comment List</center>", className: "btn-sm prints",footer: true, 
        },'colvis'  
        ],
        

    });

    $('#allReportcommentTrack').DataTable({ 
        responsive: true,
       "bPaginate": true,
       "bStateSave": true,
       "searching": true,
        "aaSorting": [[ 3, "DESC" ]],
        "columnDefs": [
        { responsivePriority: 1, targets: 1},

           //  { responsivePriority: 1, targets: -5 },
           { "bSortable": false, "aTargets": [0,1,2,4,5,6] },

      
       ],

      'lengthMenu':[[10,50,100,250,500,], [ 10,50,100,250,500, "All"]],
       lengthChange: true,
   /*      buttons: [ 'copy', 'excel', 'pdf', 'colvis' ]*/
        dom:"'<'col-sm-4'l><'col-sm-4 text-center'><'col-sm-4'>Bfrtip", buttons:[ /*{
           extend: "copy", className: "btn-sm prints"
       }
       ,*/ {
           extend: "csv", title: "Report Spam List", exportOptions: {
               columns: [':visible :not(:last-child)'],
                      }, className: "btn-sm prints",footer: true,
       }
       , {
           extend: "excel", title: "Report Spam List", exportOptions: {
               columns: [':visible :not(:last-child)'],
                      },className: "btn-sm prints",footer: true,
       }
       , {
           extend: "pdf", title: "Report Spam List",exportOptions: {
               columns: [':visible :not(:last-child)'],
                      }, className: "btn-sm prints","orientation" : "landscape","pageSize" : "LEGAL",footer: true,
       }
       , {
           extend: "print",exportOptions: {
               columns: [':visible :not(:last-child)'],
                      },title: "<center> Report Spam List</center>", className: "btn-sm prints",footer: true, 
       },'colvis'  
       ],
       

   });




} );
