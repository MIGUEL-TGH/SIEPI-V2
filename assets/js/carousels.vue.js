import carouselsComp from "../components/carousels.comp.js";

const store = new Vuex.Store({
   state:{
   carouselItems: [
      { id:1, img: './multimedia/img/banners/1-MEDICINA.jpg', page:'https://ippi.puebla.gob.mx/images/convocatorias/Convocatoria_2024_Medicina_Tradicional_DPCIEE.pdf' },
      { id:2, img: './multimedia/img/banners/2-PREMIO.jpg', page:'https://ippi.puebla.gob.mx/images/convocatorias/Convocatoria_2024_Mujer_Indgena_DPCIEE.pdf' },
      { id:3, img: './multimedia/img/banners/3-LENGUAS.jpg', page:'https://ippi.puebla.gob.mx/images/convocatorias/Convocatoria_2024C4LenguasDALIIPPI.pdf' },
      { id:4, img: './multimedia/img/banners/4-ECONOMÍAS.jpg', page:null },
      { id:5, img: './multimedia/img/banners/5-DERECHOS.jpg', page:null },
      { id:6, img: './multimedia/img/banners/6-AFROMEXICANOS.jpg', page:null },
      { id:7, img: './multimedia/img/banners/7-PARTICIPACIÓN.jpg', page:null },
   ],
   carouselHeight: 400,
   monitor: 0

   },
   mutations:{},
   actions:{},
   getters: {},
   modules: {}
});

const App_Vue = new Vue({
   el: '#App',
   store:store,
   vuetify: new Vuetify(),
   data:{
      drawer: false,
   },
   async created(){
      await this.getComponents(1);
      await this.updateCarouselHeight();
   },
   components:{},
   methods:{ 
      async getComponents(value){
         const COMPONETS ={
            1: async () => {  //Main
               store.state.mainComp = 'index_comp';
            },
         };
         COMPONETS[value] ? await COMPONETS[value]() : console.log('¡Component not found!');
      },
      async updateCarouselHeight(){
         store.state.monitor = window.innerWidth;
         if(window.innerWidth < 400){
            store.state.carouselHeight = 150;
         }else if (window.innerWidth < 768) { //768
            store.state.carouselHeight = 200;
         }else if (window.innerWidth >= 768 && window.innerWidth <=850) {
            store.state.carouselHeight = 250;
         }else if(window.innerWidth >= 850 && window.innerWidth <=1000) {
            store.state.carouselHeight = 300;
         }else if(window.innerWidth > 1000 && window.innerWidth <=1200) {
            store.state.carouselHeight = 350;
         }else {
            store.state.carouselHeight = 400;
          }
         setTimeout(() => {   this.updateCarouselHeight(); }, "1000");
      }
   
   },
   computed:{
      mainComp: function () { return store.state.mainComp.toLowerCase(); },
   }

});