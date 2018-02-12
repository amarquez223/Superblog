$(document).ready(function() {
	$("form").on('submit', (function (e) {

		$("#err_title").removeClass("show");
		$("#err_body01").removeClass("show");
		$("#err_body02").removeClass("show");
		$("#error_frame").removeClass("show")
		
		const title = $("#blog_title").val();
		const body = $("#blog_body").val();
		let vr_return = true;

		if (title ==  "") {
			$("#err_title").addClass("show");
			vr_return = false;
		}	

		if (body == "") {
			$("#err_body01").addClass("show");
			vr_return = false;
		}

		if (body.length < 250) {
			$("#err_body02").addClass("show");
			vr_return = false;
		}

		if (vr_return === false) {
			$("#error_frame").addClass("show");
			e.preventDefault();
		}

		return vr_return;
	}))
});