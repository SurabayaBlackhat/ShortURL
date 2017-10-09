document.addEventListener("turbolinks:load", function() {
	toastr.options.timeOut = 10000;
	toastr.options.closeButton = true;
	toastr.options.progressBar = true;
	toastr.options.showMethod = 'slideDown';
	toastr.options.hideMethod = 'slideUp';
	toastr.options.closeMethod = 'slideUp';
	toastr.options.positionClass = 'toast-top-right';
	toastr.options.preventDuplicates = true;

	$('[data-toggle="tooltip"]').tooltip();

	$("img").addClass("img-responsive");

	"console" in window && console.log("%cAre you BlackHat?",
	    "color: #2baf63; font-size: 5em; line-height: 2; font-family: Courier");

});
