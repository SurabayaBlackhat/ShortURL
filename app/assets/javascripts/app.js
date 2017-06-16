/**
 * Created by sundi3yansyah on 08/12/16.
 */

// United Ninja

document.addEventListener("turbolinks:load", function() {
    toastr.options.closeButton = true;
    toastr.options.timeOut = 10000;
    toastr.options.preventDuplicates = true;
    toastr.options.showMethod = 'slideDown';

    $('[data-toggle="tooltip"]').tooltip();

    $("img").addClass("img-responsive");

});
