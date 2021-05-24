
const tQuery = (q) => {
	return fetch(`php/data.php?${q}`)
	.then(r=>r.json());
}
const tPost = (q) => {
	return fetch(`php/data.php`,{
		method:'POST',
		body:JSON.stringify(q),
		headers:{
			'Content-Type':'application/json'
		}
	})
	.then(r=>r.json());
}

const tUpload = (s) => {
	let fd = new FormData();
	fd.append('image',$(s)[0].files[0]);

	return fetch(`php/data.php`,{
		method:'POST',
		body:fd
	}).then(d=>d.json())
}



const log = (d) => {
	console.group();
	for(let i in d) console.log(i,d[i]);
	console.groupEnd();
}



const checkData = (checker) => new Promise((resolve,reject)=>{
	const check = () => {
		return checker()?resolve():setTimeout(check,10);
	}
	check();
});




const makeThumb = (s,r='img/empty_doggy.png') => {
	return s||r;
}