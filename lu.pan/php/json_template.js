[
  '{{repeat(5, 7)}}',
  {
      id: '{{index()}}',
    name:'{{firstName()}} {{surname()}}',
    age: '{{integer(16, 73)}}',
    username:function () {
      return "user" + this.id;
    },
    email: function() {
    return "user"+ this.id +"@gmail";
    },
    password: 'pass',
    bio:'{{lorem(2, "sentences")}}',
    img:
    'http://mylulu.net/WNM617/lu.pan/img/people1.png',
    
    animals:['{{repeat(6,7)}}',
             {
    id: '{{index()}}',
  name: '{{company()}}',
    date_create: '{{date(new Date(2014, 0, 1), new Date(), "YYYY-MM-dd")}}',
    description:'{{lorem(1, "sentences")}}',
    color: function(tags) {
      var colors= ["#c7b3e5","#fefedf","#daf9ca","#f3d6b5","#efcee8"];
    return colors[tags.integer(0,2)];
   },
    breed: function(tags) {
      var breeds= ["Chihuahua","Hasky","Corgi","Akita","Poodle","Golden Retriever","Samoyed","Teddy"];
    return breeds[tags.integer(0,2)];
   },
       img:function(tags) {
         return 'http://mylulu.net/WNM617/lu.pan/img/dog'+(this.id+1)+'.png';
    },
      locations:[
        '{{repeat(5, 7)}}',
  {
    id: '{{index()}}',
    lat:'{{floating(37.695764,37.798540)}}',
    lng:'{{floating(-122.455795, -122.394818)}}'
  }
      ]
               
        }
    ]
    
  }
  
]

