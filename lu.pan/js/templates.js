
// Curried Functions
const templater = f => a =>
	(Array.isArray(a)?a:[a])
	.reduce((r,o,i,a)=>r+f(o,i,a),[]);



// const makeFakeAnimalList = templater(o=>`
// <div>
// 	<div>${o.name}</div>
// 	<div>${o.type}</div>
// 	<div>${o.breed}</div>
// </div>
// `);

// const makeFakeUserList = templater(o=>`
// <div>
// 	<div>${o.username}</div>
// 	<div>${o.email}</div>
// 	<div><img src="${o.img}"></div>
// </div>
// `);




const makeAnimalList = templater(o=>`

		<div class="flex-child doggy">
            <figure >
              <img src="${makeThumb(o.img)||'img/empty_doggy.png'}">
              <figcaption>
                <h3>${o.name||'Doggy_Name'}</h3>
                <span>${o.breed||'Doggy_Breed'}</span>
                <br>
                <span>Birthday:${o.date_create||'1900-01-01'}</span>
                <br>
                <a href="" class="js-animal-item animallist-item animal-jump" id="profile-btn" data-id="${o.id}">See Profile</a>
              </figcaption> 
            </figure>
    </div>
`);



const makeAnimalProfile = templater(o=>`

<div class="card-header"> 
            <div class="animal-card flex-parent">
            <div class="flex-none card-image">
              <label class="fill-height">
                <input type="file" class="animal-profile-image hidden" />
                <img src="${makeThumb(o.img)}" alt="" class="media-image fill-height">
              </label>
            </div>
              
              <div class="flex-child card-profile-content">
                <div class="flex-none animal-profile-name flex-parent">
                  <h2 class="flex-child">${o.name}</h2>
                  <a href="#" class="flex-child btn edit js-animal-delete js-prevent" style="text-align:right;" data-id="${o.id}"  data-activate="#edit-animal-profile-drawer" >
                  <img style="width:16%;" src="img/delete.svg" alt="">
                  </a>
                </div>
                <div class="flex-none"><span class="type">Breed: ${o.breed}</span></div>
                <div class="flex-none"><span class="type">Birthday: ${o.date_create}</span></div>
                <div class="flex-none"><p class="brief" style=" word-wrap: break-word;">${o.description}</p></div>
                
              </div>
            </div>
</div>

`);

const makeUserProfile = templater(o=>`

<div class="user-profile-header">
            <div class="flex-parent btn-row press-back">
              
              <div class="flex-child" style="height: auto;font-size: 1.2em;">Profile</div>
              
            </div>


<div class="profile-image">
  <div class="profile-bar"></div>
  <label>
    <input type="file" class="user-profile-image hidden" />
    <img class="media-image" src="${makeThumb(o.img, 'lib/img/empty_user.svg')}" alt="profile">
  </label>
</div>
<div class="user-profile-body" style="text-align: center;color: white;">
  <div style="margin:1em auto;"><h2>${o.name||'Add Your Name'}</h2>
  <p class="age flex-child">${o.age}</p>
  <p class="email flex-child">${o.email}</p>
  <hr>
  <div class="flex-parent">
    <div class="flex-child"><h2>${o.animals-3}</h1>
              <span>Breeds</span></div>
    <div class="flex-child"><h2>${o.animals}</h1>
              <span>Dogs</span></div>
    <div class="flex-child"><h2>${o.animals+12}</h1>
              <span>Locations</span></div>
  </div>
  </div>
  <hr>
  <div class="bio" style="text-align:left; margin:1em auto;">
    <div class="bio-title" style="font-weight: bold;font-size:1.25em;">About ${o.name}</div>
    <div class="bio-content">${o.bio}</div>
  </div>
  <hr>
  <div class="editlogout">
  <a href="#edit-profile-page"><button id="profile-btn" class="js-edit-user ui-btn ui-shadow ui-corner-all">Edit</button>
  <a href="#" class="js-logout">Logout</a>
</div>

      
</div>

`);


const makeRecentWindow = templater(o=>`
<div class="maplist-item">
            <div class="flex-parent location-card" data-role="none">
              <div class="flex-none card-img">
                <img src="${o.img||'img/empty_doggy.png'}" class="animal-img">
              </div>
              <div class="flex-child card-content">
                <h2>${o.name}</h2>
                <p class="type">${o.breed}</p>
                [  <a href=""  data-id="${o.id}" class="js-animal-item animal-jump">Visit</a>  ]
              </div>
            </div>
</div>
`);


const makeDetailInfo = templater(o=>`
<div class="maplist-item" style="text-align:left;">
            <div class="location-card" data-role="none">
                <div class="mapprofile-item card-content">
                    <span class="flex-none" style="font-weight:bold;">Coordinate</span>
                    <div class="flex-none" style="padding-top:.5em;">
                    <span>${o.lat}</span>x<span>${o.lng}</span>
                    </div>
                </div>
                <div class="flex-none location-brief">
                  <span style="font-weight:bold;">Description</span>
                  <p class="type" style="margin:0;padding-top:.5em;">${o.description||'No description'}</p>
                </div>
                
              </div>
              
            </div>
</div>
`);
