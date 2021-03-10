


// Document Ready
$(()=>{

	checkUserId();
	

	/* EVENT HANDLING */
	$(document)

		/* FORM SUBMISSIONS */
		.on("submit","#login-form",function(e){
			e.preventDefault();
			checkLoginForm();
		})
		.on("submit","#signup-form",function(e){
			e.preventDefault();
		})


		/* CLICKS */
		.on("click",".js-logout",function(e){
			e.preventDefault();
			sessionStorage.removeItem('userId');
			checkUserId();
		})




		/* DATA ACTIVATE */
		.on("click","[data-activate]",function(e){
			$($(this).data("activate"))
				.addClass("active");
		})
		.on("click","[data-deactivate]",function(e){
			$($(this).data("deactivate"))
				.removeClass("active");
		})
		.on("click","[data-toggle]",function(e){
			$($(this).data("toggle"))
				.toggleClass("active");
		})
		.on("click","[data-activateone]",function(e){
			$($(this).data("activateone"))
				.addClass("active")
				.siblings().removeClass("active");
		})

		;


	$("[data-template]").each(function(){
		console.log(this)
		$(this).html($($(this).data("template")).html());
	})


});