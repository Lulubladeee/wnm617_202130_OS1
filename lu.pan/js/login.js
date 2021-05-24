

const checkLoginForm = async() => {
	
	let u = await tPost({
		type:50,
		params:[
			$("#login-username").val(),
			$("#login-password").val()
		]
	}).then(d=>d.result[0]);

	if(u !== undefined) {
		sessionStorage.userId = u.id;
		$("#login-form")[0].reset();
	} else {
		sessionStorage.removeItem('userId');
		console.log("nope")
	}

	checkUserId();
}

const checkUserId = () => {

	const p = ['#login-page','#signup-page',''];

	if(sessionStorage.userId===undefined) {
		// Not logged in
		if(!p.some(o=>o==window.location.hash))
			$.mobile.navigate("#login-page");
	} else {
		// Logged in
		if(p.some(o=>o==window.location.hash))
			$.mobile.navigate("#recent-page");
	}
}