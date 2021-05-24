
const makeMap = async(tm) => {
	await checkData(()=>window.google);

	let sf = {lat: 37.78621, lng: -122.3998622};

	if(!tm.data("map")) tm
		.data(
			"map",
			new google.maps.Map(tm[0], {
				center: sf,
				zoom: 11,
				styles:style,
				disableDefaultUI:true
			})
		)
		.data(
			"infoWindow",
			new google.maps.InfoWindow({
				content:''
			})
		);

	makeMarkers(tm,[]);

	// var map is tm.data("map")
	// console.log(tm.data("map"))
}


const setMapBounds = (map,locs) => {
	if(locs.length==1)
		map.setCenter(locs[0]);
	else
	if(locs.length==0) {
		if(window.location.protocol!=='https:') return;
		else {
			navigator.geolocation.getCurrentPosition(p=>{
				let pos = {
					lat:p.coords.latitude,
					lng:p.coords.longitude
				}
				map.setCenter(pos);
			},(...args)=>{
				console.log("error?",args)
			},{
				enableHighAccuracy:false,
				timeout:5000,
				maximumAge: 0
			});
		}
	}
	else {
		let bounds = new google.maps.LatLngBounds(null);
		locs.forEach(o=>bounds.extend(o));
		setTimeout(()=>map.fitBounds(bounds),100);
	}
}


const makeMarkers = (tm,locs) => {

	if(tm.data("markers"))
		tm.data("markers")
			.forEach(o=>o.setMap(null));

	tm.data("markers",[]);

	locs.forEach(o=>{
		let m = new google.maps.Marker({
		    position: o,
        animation: google.maps.Animation.DROP,
		    map: tm.data("map"),
		    icon:{

		    	url:o.img||'img/marker.png',
		    	scaledSize:{
		    		height:50,
		    		width:50
		    	}
		    }
		});
    
		tm.data("markers").push(m);
    // add click loot to pop out the info window, 
    // but the icon here used another one, still don't know which one is the image added here
    // m.addListener(
    //   "click",
    //   function(){
    //   let info = new google.maps.InfoWindow({
    //   content: `
    //       <div class="maplist-item" style="text-align:left;">
    //                   <div class="location-card" data-role="none">
    //                       <div class="mapprofile-item card-content">
    //                           <span class="flex-none" style="font-weight:bold;">Coordinate</span>
    //                           <div class="flex-none" style="padding-top:.5em;">
    //                           <span>${o.lat}</span>x<span>${o.lng}</span>
    //                           </div>
    //                       </div>
    //                       <div class="flex-none location-brief">
    //                         <span style="font-weight:bold;">Description</span>
    //                         <p class="type" style="margin:0;padding-top:.5em;">${o.description||'No description'}</p>
    //                       </div>
                          
    //                     </div>
                        
    //                   </div>
    //       </div>
    //       `
    //   });
    //   info.open(tm.data("map"), m);
    //                 });
    
	})
}

    
let style = [
            {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#212121"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#212121"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "administrative.country",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#181818"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1b1b1b"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#2c2c2c"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8a8a8a"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#373737"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#3c3c3c"
      }
    ]
  },
  {
    "featureType": "road.highway.controlled_access",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#4e4e4e"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#0c0914"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#3d3d3d"
      }
    ]
  }

            ];