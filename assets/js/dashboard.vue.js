//----------------------------------------------------CLASS OBJ----------------------------------------------------
import images_ from "./images.js";
import tables_ from "./tables.js"

//----------------------------------------------------COMPONETS----------------------------------------------------
import initComp from "../components/init.comp.js";
import updatePassComp from "../components/update.pass.comp.js";
import constructionWebsite from "../components/construction.website.comp.js";
import viewFilesComp from "../components/viewFiles.comp.js";

import usersComp from "../components/users.comp.js";
import reportVisits from "../components/report.visits.comp.js";
import fuentesInformacion from "../components/fuentes.informacion.comp.js";

import regionsComp from "../components/regions.comp.js";
import afroComp from "../components/afromexicana.comp.js";
import economyComp from "../components/economy.comp.js";
import userPermissionsCom from "../components/user.permissions.comp.js";

//----------------------------------------------------MODULES----------------------------------------------------
import updatePassMod from "../modules/update.pass.mod.js";
import usersMod from "../modules/users.mod.js";
import reportVisitsMod from "../modules/report.visits.mod.js";
import fuentesInformacionMod from "../modules/fuentes.informacion.mod.js";
import userPermissionsMod from "../modules/user.permissions.mod.js";

import regionsMod from "../modules/regions.mod.js";
import afroMod from "../modules/afromexicana.mod.js";
import economyMod from "../modules/economy.mod.js";

//---------------------------------------------------------------------------------------------------------------
const store = new Vuex.Store({
   state:{
      http: './api/', //  'https://siepi.puebla.gob.mx/api/'     Activar CORS
      uri: '',
      mainComp: '', 
      viewFilesComp: 'viewfiles_comp',
      Dialog_data: {  actived: false, title: "", indicator:'', items: {}, panel:false },
      dialog_file:{ actived: false, src: "", type:""},
      // dialog_loader: true,
      imgWildcard:{},
   },
   mutations:{},
   actions:{
      async logout({ rootState }, e){
         try {
            if(e.type=="session"){
               window.localStorage.clear();
               window.location.href = e.page;
            }

            if(e.type=="serve"){
               if(window.localStorage.siepi){
                  await axios.post(store.state.http + 'login?type=close', {token: window.localStorage.siepi})
                  .then((response) => {
                     if(response.data.result.status == 200){ 
                        window.localStorage.clear();
                        window.location.href = './'
                     }
                  }, error =>{});
               }else{
                  window.localStorage.clear();
                  window.location.href = './'
               }
            }
         } catch (error) {
            console.log(error);
         }
      },

      setClass({ state }, e) {
         if (e.style.includes(e.column)) {
            return 'value-table'; 
         }else{
            return 'desc-table';
         }
      },
      async formatNumber(context, item) {
         let result = item.value;
         const FORMATS ={
            1: async () => {
               if(result != '*'){
                  result = item.value.replace(/,/g, '');
               }
            },
            2: async () => {
               if(result != '*'){
                  result = parseInt(item.value.replace(/,/g, ''));
               }else{
                  result = 0;
               }
            },
            3: async () => {
               if(result != '*'){
                  result = parseInt(item.value).toLocaleString();
               }
            },
            // 'new_item': async () => {},
         }; 
         FORMATS[item.type] ? await FORMATS[item.type]() : console.log('¡Reset not found!');
         return result;
      },
      async SendNotificatios(context, message){
         try {
            Notification.requestPermission()
            .then(permission => {
               if(permission === 'granted'){
                  new Notification(message);
               }else{
                  alert(message);
               }
            });
         } catch (error) {
            console.log(error);
         }
      },
      async setTables(context, element){
         try {
            let result = null;
            const TABLES ={
               'visits': async () => {
                  const TABLE_01 = new tables_();
                  await TABLE_01.setTable(element.table); 
                  result = TABLE_01;
               },
               // 'new_item': async () => {},
            }; 
            TABLES[element.type] ? await TABLES[element.type]() : console.log('¡Reset not found!');

            if(result){
               return result;
            }

         } catch (error) {
            console.log(error);
         }
      },
      async getData({state}){
         try {
            if(window.localStorage.siepi){
               let Items = [], result = [];

               await axios.post(state.http + state.uri + '?type=itemsAdmin', {token: window.localStorage.siepi})
               .then((response) => {
                  if(response.data.status == 200){ 
                     Items = response.data.result;
                  }
               }, error =>{ 
                  console.log(error.response.data);
               });   
               return Items;
            }
         } catch (error) {
            console.log(error);
         } finally {}
      },
      
      //------------------Images----------------------------------------------------
      async loadFile({ state }, value){ // antes loadImages
         try {
            if(value.type == "users"){
               for(const item of value.items){
                  let Img_send = {};
                  if(!item.img.hasOwnProperty('id')){
                     const find = await state.usersMod.dataTable.images.find(element => {return element.id == item.id});
                     const splitUrl = await find.img.split('/');
                     const fileName = splitUrl.pop();
   
                     if(fileName != 'sinfotos.png'){
                        const IMG = await new images_();
                        await IMG.setFile({type:'get', url:find.img, id:find.id, name:fileName});
                        Img_send = IMG;
                     }else{
                        Img_send = store.state.imgWildcard;
                     }
   
                     const index = await state.usersMod.dataTable.items.findIndex(element => {return element.id == item.id});
                     state.usersMod.dataTable.items[index].img = Img_send;
                  }
               }
            }else if(value.type == "img_user"){

               if(state.usersMod.forms.txt_img != null){
                  const image = new images_();
                  await image.setFile({type:'compress', file: value.file, quality:50});
                  state.usersMod.forms.img = image;

                  // await image.setFile({type:'Compress_New', file: value.file});
                  // await image.setFile({type:'get', file: value.file});
                  // state.usersMod.forms.img = state.usersMod.forms.txt_img;

                  //-----------------------------------------------------------------------------------------------------
                  // let File_ = new FormData();
                  // File_.append("Upload_file", state.usersMod.forms.txt_img);
                  // let res = {status: 0};

                  // await axios.post(state.http + 'uploadfile?type=img_user', File_)
                  // .then((response) => {
                  //    console.log(response.data);
                  // }, error =>{ 
                  //    console.log(error.response.data);
                  // });


               }else{ state.usersMod.forms.img = {}; }

            }
         } catch (error) {
            console.log(error);
         }
      },
      async uploadFile ({ state }, element) {
         // console.log('uploadFile --> ', element);
         const TASKS = {
            'img_user': async () => {
               const img = await element.img.setUpload( state.http + 'uploadfile?type=' + element.type );
               if(img.hasOwnProperty('fileName')){
                  console.log(img);
               }
            }
         };

         TASKS[element.type] ? TASKS[element.type]() : console.log('¡task not found!');
      },
      async expandFile ({ state }, e) {
         // console.log("expandFile -->", e);
         const TASKS = {
            // 'pdf': async () => {
            //    state.dialog_file.src = e.src;
            //    state.dialog_file.type = e.type;
            //    state.dialog_file.actived = true;
            // },
            'img': async () => {
               state.dialog_file.src = e.src;
               state.dialog_file.type = e.type;
               state.dialog_file.actived = true;
            }
         };

         TASKS[e.type] ? TASKS[e.type]() : console.log('¡Task not found!');
      },
      
      //-----------------------------------------------------------------------
   },
   getters: {},
   modules:{
      updatePassMod,
      usersMod,
      reportVisitsMod,
      fuentesInformacionMod,
      userPermissionsMod,

      regionsMod,   
      afroMod,
      economyMod,
   }
});

const App_Vue = new Vue({
   el: '#App',
   store:store,
   vuetify: new Vuetify(),
   data:{
      token_iat: 0,
      token_exp: 0,
      time_left: '00:00:00',
      progress : 0,
      // pass : 0,

      name_user:'',
      img_user: null,
      drawer: null,
      components:{
         generals: [],
         indicators: []
      }
   },
   async created(){
      await this.CheckLogin();
   },
   components:{},
   methods:{
      async parseJWT(token){
         const tokenParts = token.split('.');
         const payload = tokenParts[1];
         const decodedPayload = atob(payload);
         const decodedToken = JSON.parse(decodedPayload);
         if(decodedToken.data){
            const splitUrl = decodedToken.data.img.split('/');
            const nameFile = splitUrl.pop();
            const IMG = await new images_();
            await IMG.setFile({type:'get', url: decodedToken.data.img, name: nameFile});
            return {
               status: 1,
               id: decodedToken.data.id,
               name: decodedToken.data.name,
               img: IMG,
               pass: decodedToken.data.pass,
               iat: Math.floor(decodedToken.iat),
               exp: Math.floor(decodedToken.exp)
            }
         }else{
            return {status:0}
         }
      },
      async CheckLogin(){
         try {
            let result = false;
            if(window.localStorage.siepi){
               console.log(window.localStorage.siepi);
               await axios.post(store.state.http + 'login?type=validate', {token: window.localStorage.siepi})
               .then((response) => {
                  if(response.data.status == 200){ 
                     result = true;
                  }
               }, error =>{ 
                  if(error.response.data.status == 303 || error.response.data.status == 400){
                     this.$store.dispatch('logout', {type:'session', page:'./'});
                  }
               });      
            }else{
               this.$store.dispatch('logout', {type:'session', page:'./'});
            }

            if(result){
               const decodeJwt =  await this.parseJWT(window.localStorage.siepi);
               if(decodeJwt.status === 1){
                  this.img_user = decodeJwt.img;
                  this.name_user = decodeJwt.name;
                  this.token_iat = decodeJwt.iat;
                  this.token_exp = decodeJwt.exp;
                  await this.startTime();

                  if(decodeJwt.pass == 1){
                     await this.getModules(window.localStorage.siepi);
                  }else if(decodeJwt.pass == 0){
                     this.getComponents('update_pass_comp')
                  }
               }
            }
         } catch (error) {
            console.log(error);
         }
      },
      startTime(){
         let time_init = Date.now();
         let time_sec = Math.floor(time_init / 1000);

         if(time_sec > this.token_exp){
            this.$store.dispatch('SendNotificatios', '¡La sesión a expirado!');
            this.$store.dispatch('logout', {type:'serve'});
         }else{
            let Countdown = this.token_exp - time_sec;
            let time_limit = this.token_exp - this.token_iat;
            let time_progress = time_sec - this.token_iat;
            
            let segundos = Math.floor(Countdown) % 60;
            let minutos = Math.floor(Countdown / 60) % 60;
            let horas = Math.floor(Countdown / (60 * 60)) % 24;
            // let dias = Math.floor(Countdown / ( 60 * 60 * 24));
           
            segundos = segundos < 10 ? "0" + segundos : segundos;
            minutos = minutos < 10 ? "0" + minutos : minutos; 
            horas = horas < 10 ? "0" + horas : horas;
            // dias = dias < 10 ? "0" + dias : dias;

            this.time_left = horas  + ':' + (minutos)  + ':'+ segundos;
            // this.progress = ((time_progress * 100) / time_limit).toFixed(2);
            this.progress = (100 - ((time_progress * 100) / time_limit)).toFixed(2);
         }
         setTimeout(() => { this.startTime(); }, "1000");
      },
      async getComponents(value){
         // console.log('getComponents()--> ',value);
         // const startTime = performance.now();
         const COMPONETS ={
            'update_pass_comp': async () => {  //Actualizar Contraseña   ✔✔
               store.state.uri = 'users';
               document.title = "Actualizar Contraseña | SIEPI";
               store.state.mainComp = value;
            },
            'user_permissions_comp': async () => {  //Permisos de Usuario   ✔✔
               store.state.uri = 'user_permissions';
               document.title = "Permisos de Usuario | SIEPI";
               store.state.mainComp = value;
               // const items = await store.dispatch('getData');
               // console.log(items);
               // store.state.userPermissionsMod.dataTable.items = items;
            },
            'init_comp': async () => {  //Inicio   ✔✔
               document.title = "Inicio | SIEPI";
               store.state.mainComp = value;
            },
            'report_visits_comp': async () => {  //Reporte de visitas
               store.state.uri = 'visits';
               document.title = "Reporte de visitas | SIEPI";
               store.state.mainComp = value;
            },
            'fuentes_info_comp': async () => {  //Fuentes de Información de los Indicadores
               store.state.uri = 'fuentes_info';
               document.title = "Fuentes de Información de los Indicadores | SIEPI";
               store.state.mainComp = value;
            },
            'users_comp': async () => {
               store.state.uri = 'users';
               document.title = "Usuarios | SIEPI";
               store.state.mainComp = value;
               // store.state.usersMod.dialog_item.actived = true;
               const items = await store.dispatch('getData');
               const imagesUsers = await items.map(item => ({
                  id: item.id,
                  img: item.img
               }));
               store.state.usersMod.dataTable.images = imagesUsers;
               
               const users = items.map(item => ({
                  ...item,
                  img: {}
               }));

               store.state.imgWildcard = await new images_();
               await store.state.imgWildcard.setFile({type:'get', url: 'multimedia/img/users/sinfotos.png'});

               store.state.usersMod.imgWildcard = store.state.imgWildcard;
               store.state.usersMod.dataTable.items = users;
               // console.log(users);
            },
            'regions_comp': async () => {  //Regiones del Estado   ✔✔
               store.state.uri = 'regions';
               store.state.mainComp = value;
               const items = await store.dispatch('getData');
               store.state.regionsMod.DataTable.Items = items;
            },
            //----------------------------------------------------------------
            'afromexicana_comp': async () => {  //Afromexicana    ✔✔
               store.state.uri = 'afromexicana';
               // store.state.mainComp = 'afromexicana_comp';
               store.state.mainComp = value;
               await store.dispatch('afroMod/getData');
               // await store.dispatch('afroMod/getTownHall');
            },
         };
         // COMPONETS[value] ? await COMPONETS[value]() : console.log('¡Component not found!');
         COMPONETS[value] ? await COMPONETS[value]() :  store.state.mainComp = 'construction_website';
         // const endTime = performance.now();
         // console.log( `Total time for fetch: ${((endTime - startTime) / 1000).toFixed(2)} seconds --> getComponents()` );
      },
      async getModules(token){
         try {
            let result = [];
            await axios.post(store.state.http + 'user_permissions?type=modules', {token})
            .then((response) => {
               if(response.data.status == 200){
                  this.components.generals = response.data.result.generals;
                  this.components.indicators = response.data.result.indicators;
                  this.getComponents('init_comp'); //init_comp     users_comp     afromexicana_comp
               }
            }, error => { 
               console.log(error.response.data);
            }, {timeout: 5000}); 
         } catch (error) {
            console.log(error);
         }
      },
   },
   computed:{
      mainComp: function () { return store.state.mainComp.toLowerCase(); },
      viewFileComp: function () { return store.state.viewFilesComp.toLowerCase(); }   
   }
});