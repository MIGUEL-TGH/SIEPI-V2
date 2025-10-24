import images_ from "./images.js";

import headerComp from "../components/header.comp.js";
import footerComp from "../components/footer.comp.js";
import imagesCarousel_Comp from "../components/images.carousel.comp.js";

import indexComp from "../components/index.comp.js";
import queEsSiepiComp from "../components/que.es.siepi.comp.js";
import consejosRegionalesComp from "../components/consejos.regionales.comp.js";
import consejoEstatalComp from "../components/consejo.estatal.comp.js";
import postcardsComp from "../components/postcards.comp.js";
import materialesDidacticos from "../components/materiales.didacticos.comp.js";
import documentalesComp from "../components/documentales.comp.js";
import booksComp from "../components/books.comp.js";
import midComp from "../components/mid.comp.js";

//---------------------------------------------------------------------------------------------------------------
const store = new Vuex.Store({
   state:{
      http: './api/',
      url: null,
      urlParams:null,
      mainComp: '',
      
      images: [],
      img_siepi: './multimedia/img/icons/map_pu_rojo.png',
      carouselHeight: 400,
      imgHeight: 0,
      img_contain: {
         height: 0,
         width: 0
      },
      
      windowWidth:0,
      Slides: [],
      iconsPage:[
         'mdi-facebook',
         'mdi-twitter',
         'mdi-linkedin',
         'mdi-instagram',
      ],

      //-----------------------------------------------------
      projects_images: [],
      Dialog_data: { 
         actived: false, 
         title: "", 
         currentPage:1,
         items: {content:"", galery_img:[], img:'', link:null, pdfs:[], summary: null, title:null},
      },
      Dialog_file:{ actived: false, src: "", type:""},
      Dialog_Loader: false,

      //---------------------Images Carousel--------------------------------
      dialog_images: false ,
      imagesCarousel:{images:[], index:0},
   },
   mutations: {
      SET_DIALOG_IMAGES(state, value) {
         state.dialog_images = value;
      },
   },
   actions:{
      async loadData({ state }, url){
         // console.log("loadData-->", url);
         let result = [];
         await fetch(url)
         .then(response => {
             if (!response.ok) {
                 throw new Error('Network response was not ok');
             }
             return response.json();
         })
         .then(data => {
            result = data;
         })
         .catch(error => {
             console.error('There has been a problem with your fetch operation:', error);
         });

         return result;
      },
      async loadImages({ state }, value){
            // console.log( "loadImages() -->",value);
            if(value.type == 'one'){
               const splitUrl = await value.url.split('/');
               const fileName = splitUrl.pop();

               const image = await new images_();
               await image.setFile({type:'get', url: value.url, name:fileName});

               if(image.file.size > 2000000){  // 1000000 = 1 MB
                  await image.setFile({type:'compress', file: image.file, quality:50});
               }

               return image;
            }

            if(value.type == 'array'){
               let result = [];
               for(const item of value.items){
                  // console.log(item);
                  const splitUrl = await item.src.split('/');
                  const fileName = splitUrl.pop();

                  const image = await new images_();
                  await image.setFile({type:'get', Url: item.src, name:fileName});

                  if(image.file.size > 2000000){  // 1000000 = 1 MB
                     await image.setFile({type:'compress', file: image.file, quality:50});
                  }
                  
                  result.push({
                     src: image.url
                  });
               }
               return result;
            }

            if(value.type == 'projects'){
               let result = [];
              try {
                  const images = value.items;
                  for(const item of images){
                     const splitUrl = await item.src.split('/');
                     const fileName = splitUrl.pop();
                     
                     const image = await new images_();
                     await image.setFile({type:'get', url: item.src, name:fileName});
                     
                     result.push({
                        src: image.url,
                        img: item.src
                     });
                  }
               } catch (error) {
                  console.error('Error loading images:', error);
               } finally {
               }
               return result;
            }
      },
      async getSliders({state, dispatch}){
         let data = await dispatch('loadData', './assets/json/proyectos.json');
         const shuffled = await [...data].sort(() => 0.5 - Math.random());
         state.Slides = shuffled.slice(0, data.length);
      },

      async Count_visits({state}){
         // console.log('Count_visits()-->', state.mainComp);
         // console.log(store.state.http + 'visits');
         
         // let time_ = Date.now(); // 1724191202544;
         // let date = new Date(time_);

         // // Obtener los componentes de la fecha y hora
         // let year = date.getFullYear();
         // let month = String(date.getMonth() + 1).padStart(2, '0'); // Mes (1-12)
         // let day = String(date.getDate()).padStart(2, '0'); // Día (1-31)
         // let hour = String(date.getHours()).padStart(2, '0'); // Hora (0-23)
         // let minute = String(date.getMinutes()).padStart(2, '0'); // Minuto (0-59)
         // let second = String(date.getSeconds()).padStart(2, '0'); // Segundo (0-59)

         // // Formatear la fecha y hora en el formato deseado
         // let formattedDate = `${year}-${month}-${day} ${hour}:${minute}:${second}`;
         // console.log(formattedDate);
         
         return;         
         let dateTime = Date.now(); // 1724191202544;
         await axios.post(store.state.http + 'visits', {comp: state.mainComp, dateTime})
         .then((response) => {
            // console.log(response.data.result);
         }, error =>{
            // console.log(error.response.data);
         }); 

      },
      async setComponents({ state, dispatch }, value){
         console.log('setComponents()-->', value);
         state.Dialog_Loader = true;
         const COMPONETS = {
            'main': async () => {  //main
               document.title = "Inicio | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'index_comp';
            },
            'que-es-el-siepi': async () => {
               document.title = "¿Qué es el SIEPI? | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'que_es_el_siepi_comp';
            },
            'postales': async () => {
               document.title = "postales | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'postcards_comp';
            },
            'materiales-didacticos': async () => {
               document.title = "Materiales Didácticos | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'materiales_didacticos_comp';
            },
            'consejos-regionales': async () => {
               document.title = "Consejos Regionales | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'consejos_regionales_comp';
            },
            'consejo-estatal': async () => {
               document.title = "Consejo Estatal | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'consejo_estatal_comp';
            },
            'documentales': async () => {
               document.title = "Documentales | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'documentales_comp';
            },
            'libros': async () => {
               document.title = "Libros | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'books_comp';
            },
            'mid': async () => {
               document.title = "Módulos Interculturales Digitales | Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas";
               store.state.mainComp = 'mid_comp';
            },
         };
         COMPONETS[value] ? await COMPONETS[value]() : window.location.href = './';
         await dispatch('Count_visits');
         state.Dialog_Loader = false;
      },
      async setUrl({ state, dispatch }, value){
         // console.log('setUrl()-->', value);
         
         const updateUrl = async (send, value) => {
            if (send) { // others comps
               state.url.searchParams.set('item', value);
               window.history.pushState({}, '', state.url);
               await dispatch('setComponents', value);
            } else { // main
               state.url.search = '';
               window.history.pushState({}, '', state.url);
               await dispatch('setComponents', value);
            }
         };

         const COMPONENTS = {
            1: async() => await updateUrl(false, 'main'),   // main
            2: async() => await updateUrl(true, 'que-es-el-siepi'),  // ¿Qué es el siepi?
            3: async() => await updateUrl(true, 'postales'),  // Postales
            4: async() => await updateUrl(true, 'materiales-didacticos'),  // Material Didácticos
            5: async() => await updateUrl(true, 'consejos-regionales'),  // Consejos regionales
            6: async() => await updateUrl(true, 'documentales'),  // Documentales
            7: async() => await updateUrl(true, 'libros'),  // Libros
            8: async() => await updateUrl(true, 'consejo-estatal'),  // Consejo Estatal
            10: async() => await updateUrl(true, 'mid'),  // Modulos Interculturales Digitales
         };

         if (COMPONENTS[value]) {
            await COMPONENTS[value]();
         }
      },

      async setDialog({ state, dispatch }, element){ 

         const { type, item } = element;
         try {
            if (type === 'open_by_btn' || type === 'open_by_param') {
               if (type === 'open_by_btn') {
                  state.url.searchParams.set('project', item.param);
                  window.history.pushState({}, '', state.url);
               }
   
               state.Dialog_Loader = true;   
               let images = [];
               if (item.galery_img.length > 0) {
                  const find = await state.projects_images.find(element => {return element.param == item.param});
                  if(find){
                     images = find.images;
                  }else{
                     images = await dispatch('loadImages', { type: 'projects', items: item.galery_img });
                     state.projects_images.push({ param: item.param, images:images});
                  }
               }
   
               const allData = { ...item, galery_img: images };
               state.Dialog_data.items = allData; 
               state.Dialog_data.actived = true;
            }
     
            if (type === 'cloced') {
               state.Dialog_data.actived = false;
               state.url.searchParams.delete('project');
               window.history.replaceState({}, '', state.url);
   
               state.urlParams = new URLSearchParams(state.url.search);
               state.Dialog_data.currentPage = 1;
            }
             
         } catch (error) {
             console.error('Error processing dialog:', error);
         } finally {
             if (type === 'open_by_btn' || type === 'open_by_param') {
                 state.Dialog_Loader = false;
             }
         }

      },
      async expandFile ({ state, dispatch }, e) {
         const TASKS ={
            'pdf': async () => {
               state.img_contain.width = 1200;

               state.Dialog_file.src = e.src;
               state.Dialog_file.type = e.type;
               state.Dialog_file.actived = true;
            },
            'img': async () => {
               state.img_contain.width = state.img_contain.height;
               state.Dialog_file.src = e.src;
               state.Dialog_file.type = e.type;
               state.Dialog_file.actived = true;
            },
            'open_window': async () => {
               if(e.src){
                  // window.location.href = e.src;
                  window.open(e.src,'_blank');
               }
            },
            'open_comp': async () => {
               await dispatch('setUrl', e.src);
            },

         };
         TASKS[e.type] ? TASKS[e.type]() : console.log('¡Task not found!');
      }, 
      async updateWindowWidth({ state }) {
         const width = window.innerWidth;
         // Define un objeto que mapea rangos de ancho a valores
         const breakpoints = [
            { max: 400, carouselHeight: 150, imgHeight: 150, imgContainHeight: 500 },
            { max: 768, carouselHeight: 200, imgHeight: 200, imgContainHeight: 560 },
            { max: 850, carouselHeight: 250, imgHeight: 250, imgContainHeight: 620 },
            { max: 1000, carouselHeight: 300, imgHeight: 300, imgContainHeight: 680 },
            { max: 1200, carouselHeight: 350, imgHeight: 340, imgContainHeight: 740 },
            { default: true, carouselHeight: 400, imgHeight: 360, imgContainHeight: 800 }
         ];

         // Encuentra el objeto que coincida con el ancho de ventana
         const breakpoint = await breakpoints.find(bp => width <= bp.max) || breakpoints.find(bp => bp.default);

         // Asigna los valores correspondientes al estado
         state.windowWidth = width;
         state.carouselHeight = breakpoint.carouselHeight;
         state.imgHeight = breakpoint.imgHeight;
         state.img_contain.height = breakpoint.imgContainHeight;
      },
      async openImagesCarousel({ state }, element){ 
         try {
            const { index, paginatedImages } = element;
            const images = await paginatedImages.map(item => ({
               src:item.src
            }));
            state.imagesCarousel.images = images;
            state.imagesCarousel.index = index;
            state.img_contain.width = state.img_contain.height;
            state.dialog_images = true;
            
         } catch (error) {
             console.error('Error processing dialog:', error);
         } finally { }

      }
   },
   getters: { },
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
      // store.state.Dialog_Loader = true;
      await this.getParams(null); // 05-03-2025
      await window.addEventListener('popstate', this.getParams); // 05-03-2025
      // store.state.Dialog_Loader = false;

   },
   beforeDestroy() {
      window.removeEventListener('popstate', this.getParams);
    },
   components:{},
   methods:{
      async getParams(event){
         console.log('getParams()-->', event);
         
         store.state.url = new URL(window.location);
         store.state.urlParams = await new URLSearchParams(store.state.url.search);      
         let typeComp = '';
         if(!store.state.urlParams.get('item')){
            typeComp = 'main';
         }else{
            typeComp = store.state.urlParams.get('item');
         }
         await this.$store.dispatch('setComponents', typeComp);
         // this.setComponents(typeComp);
      },
   },
   computed:{
      headerComp: function () { return 'header_comp'.toLowerCase(); },
      footerComp: function () { return 'footer_comp'.toLowerCase(); },
      imagesCarouselComp: function () { return 'images_carousel_comp'.toLowerCase(); },
      mainComp: function () { return store.state.mainComp.toLowerCase(); },
      // dialogComp: function () { return store.state.dialogComp.toLowerCase(); }
   },

});