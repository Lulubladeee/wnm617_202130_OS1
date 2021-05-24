
const makeRecentPage = async() => {

	let tm = $("#recent-page .map");
	await makeMap(tm);

	tPost({
		type:21,
		params:[sessionStorage.userId]
	}).then(d=>{
		console.log(d)
		let animals = d.result.filter(o=>o.lat!=null)
		makeMarkers(tm,animals);

		setMapBounds(tm.data("map"),animals);

		tm.data('markers').forEach((o,i,a)=>{
			o.addListener("click",e=>{
				// console.log(o,e)

				tm.data("infoWindow")
					.setContent(
					makeRecentWindow(animals[i])
					);

				tm.data("infoWindow")
					.open(tm.data("map"),o);
			})
		})
	})
}

const makeListPage = async() => {

	let a = await tPost({
		type:4,
		params:[sessionStorage.userId]
	}).then(d=>d.result);

	console.log(a)
	$("#list-page .animal-list")
		.html(makeAnimalList(a))
}

const makeAnimalProfilePage = async() => {

	let tm = $("#animal-profile-page .map");
	await makeMap(tm);

	tPost({
		type:7,
		params:[sessionStorage.animalId]
	}).then(d=>{
		$("#animal-profile-page .animal-profile-top")
			.html(makeAnimalProfile(d.result));
		$(".js-animal-delete").data("id",d.result[0].id)
	});

	tPost({
		type:5,
		params:[sessionStorage.animalId]
	}).then(d=>{
		makeMarkers(tm,d.result);
		setMapBounds(tm.data("map"),d.result);

		tm.data('markers').forEach((o,i,a)=>{
			o.addListener("click",e=>{
				// console.log(o,e)

				tm.data("infoWindow")
					.setContent(
						makeDetailInfo(d.result[i])
					);

				tm.data("infoWindow")
					.open(tm.data("map"),o);
			})
		})
	});
	
}

const makeUserProfilePage = async() => {
	tPost({
		type:20,
		params:[sessionStorage.userId]
	}).then(d=>{
		console.log(d)
		$("#profile-page [data-role='main']")
			.html(makeUserProfile(d.result));
	});
}


const makeAddLocationPage = async() => {

	let tm = $("#add-location-page .map");
	await makeMap(tm);

	tm.data("map").addListener("click",e=>{

		console.log(e.latLng.lat(),e.latLng.lng())

		$("#add-location-lat").val(e.latLng.lat())
		$("#add-location-lng").val(e.latLng.lng())
		$("#add-location-modal").addClass("active")
	})
}



const makeEditAnimalPage = async() => {
	tPost({
		type:7,
		params:[sessionStorage.animalId]
	}).then(d=>{
		
		$("#edit-animal-name").val(d.result[0].name);
		$("#edit-animal-birthday").val(d.result[0].date_create);
		$("#edit-animal-breed").val(d.result[0].breed);
		$("#edit-animal-description").val(d.result[0].description);
	});
}

const makeEditProfilePage = async() => {
	tPost({
		type:6,
		params:[sessionStorage.userId]
	}).then(d=>{
		$("#edit-profile-name").val(d.result[0].name);
		$("#edit-profile-email").val(d.result[0].email);
		$("#edit-profile-age").val(d.result[0].age);
		$("#edit-profile-description").val(d.result[0].bio);
	});
}
