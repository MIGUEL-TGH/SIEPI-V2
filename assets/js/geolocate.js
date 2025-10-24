   //----------------------------------------------------------------------ARCGIS JS------------------------------------------------------------------------------------------
   let view = undefined;

   function Show_Map(){
      require([
         "esri/Map",
         "esri/views/MapView",
         "esri/Graphic"
      ],
      (Map, MapView, Graphic) => {
           const map = new Map({
             basemap: "streets-navigation-vector"
           });
          
           view = new MapView({
               container: "viewDiv",
               map: map,
               // center: [-98.186088, 19.0563277], // longitude, latitude     
               center: [-98.1867456, 19.0544002], // longitude, latitude     
               zoom: 17
           });

           view.watch('updating', function (event) {
               setTimeout(() => {
                  if(event){ 
                     appLocate.dialog_loader.actived = false;
                     appLocate.btnGet = false;
                  }
               }, "2000");
         });

         // appLocate.Get_Locate();
         // DrawLocate();
      });
   }
   function DrawLocate(){
      require([
         "esri/widgets/Locate",
         "esri/widgets/Track",
         "esri/Graphic",
      ],function(Locate, Track, Graphic){
         const locate = new Locate({
            view: view,
            useHeadingEnabled: false,
            goToOverride: function(view, options) {
               options.target.scale = 1500;
               appLocate.forms.lng = options.target.target.longitude;
               appLocate.forms.lat = options.target.target.latitude;
               // appLocate.Dialog_Loader = true;
               return view.goTo(options.target);
            }
         });
         view.ui.add(locate, "top-left");
      });
   }
   function DrawGraphic(item){
      require([ "esri/Graphic"],
      function(Graphic){
         view.graphics.removeAll();

         let point = {
            type: "point",
            longitude:item.lng,
            latitude:item.lat,
         };

         let simpleMarkerSymbol = {
            type: "simple-marker",
            width: "10px",
            height: "10px",
            color: [44, 214, 225],
         };

         let pointGraphic = new Graphic({
            geometry: point,
            symbol: simpleMarkerSymbol,
         });
         
         view.graphics.add(pointGraphic);
         view.center = [item.lng, item.lat];  
         view.zoom = 17;
      });
   }

   //---------------------------------------------------------------------VUE APP JS------------------------------------------------------------------------------------------
   const appLocate = new Vue({
      el: '#App',
      vuetify: new Vuetify(),
      data:{
         check_type:'',
         dialog_loader:{ actived: false, message_1: "Por favor espere", message_2:"" },
         forms:{ lng:0, lat:0 },
         btnSend:true,
         btnGet:true
      },
      async created(){
         this.check_type = 'init';
         await this.checkDevice();
      },
      components:{},
      methods:{
         async checkDevice(){
            const isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ||
            window.matchMedia("(max-width: 768px)").matches;
            if (!isMobile) {
               alert("¡Para poder ingresar tienes que registrarte en tu celular gracias!");
               window.location.href="http://serviciosippi.serveirc.com/IPPI";       // './'  'http://localhost/MIGUEL-DEV/IPPI'
            }

            if(this.check_type == 'init'){
               this.check_type == '';
               this.dialog_loader.actived = true;
               await Show_Map();
               
            }
         },
         async Get_Locate() {
            if (navigator.geolocation){
               this.dialog_loader.actived = true;

               //---- Busca la posicion solo una vez ----
               await navigator.geolocation.getCurrentPosition(position => { 
                  
                  this.forms.lat = position.coords.latitude;
                  this.forms.lng = position.coords.longitude;

                  const location =  this.forms.lat + ', ' + this.forms.lng;
                  this.dialog_loader.message_2 = 'Ubicación: '+ location;

                  this.btnSend = false;
                  DrawGraphic({lng: this.forms.lng, lat: this.forms.lat});

               }, error => { 
                  console.error(error);
                  alert('¡El dispositivo o la red no permite obtener su ubicación, favor de activar el GPS y conéctese a una red más estable, ejemplo: WIFI!');  
                  
                  view.center = [-98.1867456, 19.0544002]; 
                  view.zoom = 17;
                  
                  this.dialog_loader.actived = false;
                  this.dialog_loader.message_2 = '';
                  this.forms.lat = '';
                  this.forms.lng = '';
                  this.btnSend = true;

               });

               //---- Sigue la ubicacion del usuario, ejecutandose cada cierto tiempo ----
               // await navigator.geolocation.watchPosition(position =>{
               //    DrawGraphic({lng: position.coords.longitude, lat:position.coords.latitude});
               // }, error => {
               //    // console.error(error);
               //    alert('¡Su conexión no es segura, intente conectarse en otra red para obtener su ubicación!');
               // },{timeout: 5000});
               
            } else {
               alert("¡Error! Este navegador no soporta la Geolocalización.");
            }
         },
         async Send_Locate(){
            const location =  this.forms.lng + ',' + this.forms.lat;
            if (!/^[\-]{0,1}?\d{1,3}[\.]\d+[\,]{1}[\-]{0,1}?\d{1,3}[\.]\d+/.test(location)){
               return  alert('¡Los datos no son válidos!, favor de actualizar la ubicación!');
            }
            window.location.href="http://serviciosippi.serveirc.com/IPPI/checador.html?t=1&lng="+this.forms.lng+"&lat="+this.forms.lat
         }
      },
      computed:{},
      mounted(){
         window.addEventListener("resize", this.checkDevice);
      }
   });
