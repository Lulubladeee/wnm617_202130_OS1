


// Document Ready
$(()=>{

	checkUserId();
	

	/* EVENT HANDLING */
	$(document)


	.on("pagecontainerbeforeshow",(e,ui)=>{
		switch(ui.toPage[0].id) {
			case "recent-page":
				makeRecentPage();
				break;
			case "list-page":
				makeListPage();
				break;
			case "animal-profile-page":
				makeAnimalProfilePage();
				break;
			case "profile-page":
				makeUserProfilePage();
				break;
			case "add-location-page":
				makeAddLocationPage();
				break;
			case "edit-animal-page":
				makeEditAnimalPage();
				break;
			case "edit-profile-page":
				makeEditProfilePage();
				break;
		}
	})


		/* FORM SUBMISSIONS */
		.on("submit","#login-form",function(e){
			e.preventDefault();
			checkLoginForm();
		})
		.on("submit","#signup-form",function(e){
			e.preventDefault();
		})
		.on("input","#list-search",function(e){
			e.preventDefault();
			console.log($("#list-search").val())

			let s = $("#list-search").val();
			tPost({
				type:60,
				params:[
				`%${s}%`,
				`%${s}%`,
				`%${s}%`,
				`%${s}%`,
				sessionStorage.userId]
			})
			.then(d=>{
				$("#list-page .animal-list")
					.html(makeAnimalList(d.result))
			})
		})

		// .on("submit","#map-search-form",function(e){
		// 	e.preventDefault();
		// 	console.log($("#map-search").val())

		// 	let s = $("#map-search").val();
		// 	tPost({
		// 		type:60,
		// 		params:[
		// 		`%${s}%`,
		// 		`%${s}%`,
		// 		`%${s}%`,
		// 		`%${s}%`,
		// 		sessionStorage.userId]
		// 	})
		// 	.then(d=>{
		// 		$("#recent-page .map")
		// 			.html(makeRecentPage(d.result))
		// 	})
		// })

		.on("submit","#signup-form",function(e){
			e.preventDefault();

			tPost({
				type:11,
				params:[
					$("#signup-username").val(),
					$("#signup-email").val(),
					$("#signup-password").val()
				]
			}).then(d=>{
				if(d.error) console.log("WHY??",d);
				this.reset();
				sessionStorage.userId = d.result;
				$.mobile.navigate("#list-page");
			})
		})
		// .on("submit","#list-add-animal-form",function(e){
		// 	e.preventDefault();

		// 	tPost({
		// 		type:12,
		// 		params:[
		// 			sessionStorage.userId,

					// $("#list-add-animal-name").val(),
					// $("#list-add-animal-breed").val(),
					// $("#list-add-animal-birthday").val(),
					// $("#list-add-animal-description").val()
		// 		]
		// 	}).then(d=>{
		// 		if(d.error) console.log("WHY??",d);
		// 		this.reset();
		// 		makeListPage();
		// 	})
		// })


		.on("submit","#list-add-animal-form",function(e){
			e.preventDefault();

			tPost({
				type:12,
				params:[
					sessionStorage.userId,
					$("#list-add-animal-name").val(),
					$("#list-add-animal-breed").val(),
					// $("#list-add-animal-birthday").val(),
					$("#list-add-animal-description").val()
				]
			}).then(d=>{
				if(d.error) console.log("WHY??",d);
				this.reset();
				makeListPage();
			})
		})
		.on("submit","#add-location-form",function(e){
			e.preventDefault();

			tPost({
				type:13,
				params:[
					sessionStorage.animalId,
					$("#add-location-lat").val(),
					$("#add-location-lng").val(),
					$("#add-location-description").val(),
					"http://yuanye940702.com/wnm617/mo16/img/marker.png"
				]
			}).then(d=>{
				if(d.error) console.log("WHY??",d);
				// $.mobile.navigate("#animal-profile-page")
				this.reset();
				window.history.back();
			})
		})
		.on("submit","#edit-animal-form",function(e){
			e.preventDefault();
			tPost({
				type:15,
				params:[
					$("#edit-animal-name").val(),
					$("#edit-animal-breed").val(),
					$("#edit-animal-birthday").val(),
					$("#edit-animal-description").val(),
					sessionStorage.animalId
				]
			}).then(d=>{
				log(d)
				if(d.error) console.log("WHY??",d);
				window.history.back();
			})
		})

		.on("submit","#edit-profile-form",function(e){
			e.preventDefault();
			tPost({
				type:14,
				params:[
					$("#edit-profile-name").val(),
					$("#edit-profile-email").val(),
					$("#edit-profile-age").val(),
					$("#edit-profile-description").val(),
					sessionStorage.userId
				]
			}).then(d=>{
				log(d)
				if(d.error) console.log("WHY??",d);
				window.history.back();
			})
		})


		.on("change","#animal-profile-page .animal-profile-image",function(e){
			e.preventDefault();

			log([$(this).val()]);

			tUpload(this)
			.then(d=>{
				if(d.error) console.log("WHY??",d);
				tPost({
					type:18,
					params:[
						'uploads/'+d.result,
						sessionStorage.animalId
					]
				}).then(d=>{
					makeAnimalProfilePage();
				})
			})
			
		})

		.on("change","#profile-page .user-profile-image",function(e){
			e.preventDefault();

			log([$(this).val()]);

			tUpload(this)
			.then(d=>{
				if(d.error) console.log("WHY??",d);
				tPost({
					type:19,
					params:[
						'uploads/'+d.result,
						sessionStorage.userId
					]
				}).then(d=>{
					makeUserProfilePage();
				})
			})
})

		/* CLICKS */
		.on("click",".js-logout",function(e){
			e.preventDefault();
			sessionStorage.removeItem('userId');
			checkUserId();
		})
		.on("click",".animal-jump",function(e){
			sessionStorage.animalId = $(this).data("id");
			$.mobile.navigate("#animal-profile-page")
		})
		.on("click",".js-animal-delete",function(e){
			let id = $(this).data("id");
			tPost({
				type:32,
				params:[id]
			}).then(d=>{
				sessionStorage.removeItem('animalId');
				$.mobile.navigate("#list-page");
			})
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
		let sel = $(this).data("template");
		let repl = $(sel).html();
		// console.log(this,sel,repl)
		$(this).html(repl);
	})


});