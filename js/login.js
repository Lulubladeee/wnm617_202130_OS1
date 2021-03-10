

const checkLoginForm = () => {
	let u = $("#login-username").val();
	let p = $("#login-password").val();

	if(u == "test" && p == "test") {
		sessionStorage.userId = 1;
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