//VARIABLES GLOBALES--------------------------------------------------------------------
var vector='streets-navigation-vector';
var view =undefined;
var map = undefined;
var WatchExpand = undefined;
var Layer = undefined;

//FUNCIONES EN CORRECTO FUNCIONAMIENTO--------------------------------------------------------------------
require([
      "esri/Map",
      "esri/views/MapView",
      "esri/widgets/Expand"
], function(Map, MapView, Expand){
   map = new Map({});
   map.basemap = vector;
   view = new MapView({
      container: "viewDiv",
      map: map,
      center: [-98.2019300, 19.0433400], // longitude, latitude
      zoom: 7
   });

   WatchExpand = new Expand({
      view: view,
      content: document.getElementById("InfoMap"),
      group: "top-right"
   });

   view.watch('updating', function (evt) {
      setTimeout(() => {
         if(evt == false){ App_Vue.Dialog_Loader = false; }
      }, "1500");
   });
   view.ui.add(WatchExpand, "top-right");
   // view.ui.add(WatchButtons, "top-left");

   view.on("double-click", (event) => { //  click, double-click, pointer-move, drag, hold, immediate-click
      view.hitTest(event).then( (response) => {
         if (response.results.length > 1) {
            const graphic = response.results[0].graphic;
            if(graphic.symbol){
               console.log(graphic.attributes);
               App_Vue.GetData_TownHall(graphic.attributes.Id);
            }
         }
      });
   });

   view.on("pointer-move", (event) => {
      view.hitTest(event).then( (response) => {
            if (response.results.length > 1) {
               const graphic = response.results[0].graphic;    
               (graphic.geometry.type === "point") ? document.body.style.cursor = "pointer" : document.body.style.cursor = "auto";

               if(graphic.geometry.type != "point"){ return; }
               // graphic.symbol = {
               //    type: "simple-marker",
               //    color: [142, 19, 43]
               // };
               // console.log(graphic);
            } else {
               document.body.style.cursor = "auto";
            }
      });
   });
   
   AddGeoJSONLayer(); //✔✔

   // NewGeoJSONLayer();
   // DrawLocate();
   // App_Vue.SltIndocator(1);
});

function DrawGraphic(Items, color){
   require([
     "esri/Graphic",
   ],function(Graphic){ 
      view.graphics.removeAll();
      setTimeout(() => { 
         Items.forEach(element =>{

            let Point = {
               type: "point",
               latitude:element.Lat_,
               longitude:element.Long_
            };
   
            let MarkerSymbol = {
               // type: "picture-marker",
               // url: element.Icon,
               // width: "20px",
               // height: "25px",
               type: "simple-marker",
               color: color,
            };
   
            let pointGraphic = new Graphic({
               geometry: Point,
               symbol: MarkerSymbol,
               attributes: element
            });
            view.graphics.add(pointGraphic);
         });
       }, "500");

   });
}
function AddGeoJSONLayer(){
   require([
      "esri/layers/GeoJSONLayer",
      "esri/layers/FeatureLayer"
   ],function(GeoJSONLayer, FeatureLayer){

      Layer = new GeoJSONLayer({
         url:"./assets/map_layers/mun_pue.json",
         // url:"./src/MapLayers/Pue_R001.json",
         renderer: {
            type: "simple",
            field: "mag",
            symbol: {
               type: "simple-fill",
               color: [193, 186, 151 , 0.4],
               outline: {
                  width: 1,
                  color: "gray"
               }
            }
         },

         // $feature.NOMBRE
         // popupTemplate: {
         //          title: "Municipio: {NOMBRE}",
            //    // content: "{NOMBRE}",
            //    fieldInfos: [
            //       {
            //          fieldName: 'time',
            //          format: {
            //             dateFormat: 'short-date-short-time'
            //          }
            //       }
            //    ]
         // },

      });
      map.add(Layer);

      // view.on("click", (event) => {
      //    view.hitTest(event).then( (response) => {
      //       if (response.results.length > 1) {
      //          const graphic = response.results[0].graphic;
      //          console.log(graphic);
      //          if(graphic.layer){
      //             graphic.layer.renderer.symbol = {
      //                type: "simple-fill",
      //                color: [0, 255, 0, 0.1],  // Relleno verde semitransparente
      //                outline: {
      //                  color: [0, 255, 0, 1],  // Borde verde sólido
      //                  width: 2
      //                }
      //              };
      //          }
      //       }
      //    });
      // });

      view.when().then(() => {
         return Layer.when();
      }).then((layer) => {
         return view.whenLayerView(layer);
      }).then((layerView) => {
         // view.on("pointer-move", eventHandler);
         // view.on("click", eventHandler);
         // view.on("pointer-down", eventHandler);
   
         function eventHandler(event) {
            const opts = { include: Layer }
            view.hitTest(event, opts).then(getGraphics);
         }
   
         let highlight = null;
         let ID_Layer = 0;

         function getGraphics(response) {
            if (response.results.length) {
               const graphic = response.results[0].graphic;
               let OID = graphic.attributes.__OBJECTID;

               if (highlight &&  ID_Layer != OID){
                  highlight.remove();
                  highlight = null;
                  return;
               }
               
               if (highlight) { return; }
   
               const query = layerView.createQuery();
               query.where = "__OBJECTID = " + OID ;
               layerView.queryObjectIds(query).then((ids) => {
                  if (highlight) { highlight.remove(); }
                  console.log(OID);
                  highlight = layerView.highlight(ids);
                  ID_Layer = graphic.attributes.__OBJECTID;
               });
             
           } else {
             if (highlight){
               highlight.remove();
               highlight = null;
            }
           }
         }
      });

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
         //   console.log(options.target.latitude);
           return view.goTo(options.target);
         }
       });
       view.ui.add(locate, "top-left");

       const track = new Track({
         view: view,
         graphic: new Graphic({
           symbol: {
             type: "simple-marker",
             size: "12px",
             color: "green",
             outline: {
               color: "#efefef",
               width: "1.5px"
             }
           }
         }),
         useHeadingEnabled: false
       });
       view.ui.add(track, "top-left");

   });
}

function NewGeoJSONLayer(){
   require([
      "esri/Graphic",
      "esri/layers/GraphicsLayer",
      "esri/layers/GeoJSONLayer"
   ],function(Graphic, GraphicsLayer){

       // const geojsonlayer = new GeoJSONLayer({
      //    url: "./src/MapLayers/Pue_R001.json",
      //    copyright: "USGS Earthquakes"
      // });
      // // map.add(geojsonlayer);
      // graphicsLayer.add(geojsonlayer);

      var graphicsLayer = new GraphicsLayer();
      map.add(graphicsLayer);


      const fillSymbol = {
         type: "simple-fill", // autocasts as new SimpleFillSymbol()
         color: [227, 139, 79, 0.8],
         outline: {
           // autocasts as new SimpleLineSymbol()
           color: [255, 255, 255],
           width: 1
         }
       };


      const polygon = {
         type: "polygon", // autocasts as new Polygon()
         rings: [[-64.78, 32.3], [-66.07, 18.45], [-80.21, 25.78], [-64.78, 32.3]]
       };

       const polygonGraphic = new Graphic({
         geometry: polygon,
         symbol: fillSymbol
       });

       graphicsLayer.add(polygonGraphic);

       var highlightSymbol = {
         type: "simple-fill",
         color: [0, 255, 0, 0.5],  // Relleno verde semitransparente
         outline: {
           color: [0, 255, 0, 1],  // Borde verde sólido
           width: 2
         }
       };

       view.whenLayerView(graphicsLayer).then(function(layerView) {
         view.on("click", function(event) {
           view.hitTest(event).then(function(response) {
             if (response.results.length) {
               var graphic = response.results[0].graphic;
       
               // Desresaltar todos los gráficos
               graphicsLayer.graphics.forEach(function(g) {
                    g.symbol = fillSymbol;  // OriginalSymbol es el símbolo no resaltado
                  // console.log(g.symbol);
               });
       
               // // Resaltar el gráfico clickeado
               graphic.symbol = highlightSymbol;
       
               // // Actualizar la capa de gráficos
               // graphicsLayer.refresh();
             }
           });
         });
       });




   });
}






