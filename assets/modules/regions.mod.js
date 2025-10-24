export default {
   namespaced: true,
   state: {
      Title: "Regiones",
      typeTask:'',
      dataSend:{},
      editinCells:{
         A: null,
         B: null,
         C: null,
         D: null,
         E: null
      },
      DataTable: {
         Search: '',
         Headers: [
            { text: 'No.', value: 'Index', class:"bg-dark white--text", width: '10%' },
            { text: 'No. Región', value: 'numero', class:"bg-dark white--text", width: '10%' },
            { text: 'Región', value: 'nombre', class:"bg-dark white--text", width: '30%', align: 'left' },
            { text: 'Sede', value: 'sede', class:"bg-dark white--text", align: 'left' },
            { text: 'Latitud', value: 'latitud', class:"bg-dark white--text", align: 'left' },
            { text: 'Longitud', value: 'longitud', class:"bg-dark white--text", align: 'left' },
            // { text: 'Actions', value: 'Btn', sortable: false, width: '10%', class:"bg-dark white--text", align: 'center'}
         ],
         Items: [],
      },
      Forms:{
         txt_value:'',
         txt_rule:[],

         // Txt_M:'',
         // Txt_Mun:'',
         // Region:'',
      },
      Rules:{
         A:[
            v => !!v || 'El campo es obligatorio',
            v => (v && v.length <= 8) || 'El campo solo acepta máximo 8 dígitos',
            v => !v || /^(\*|[-0-9]{1,8})$/.test(v)|| 'El campo solo acepta los siguientes caracteres: (0-9, -, *)'
         ],
         B:[
            v => !!v || 'El campo es obligatorio',
            v => (v && v.length <= 100) || 'El campo solo acepta máximo 100 dígitos',
            v => !v || /^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{1,100}$/.test(v) || 'El campo no acepta caracteres especiales'
         ],
         C:[
            v => !v || (v.length <= 100) || 'El campo solo acepta máximo 100 dígitos',
            v => !v || /^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{0,100}$/.test(v) || 'El campo no acepta caracteres especiales'
         ],
         D:[
            v => !!v || 'El campo es obligatorio',
            v => (v && v.length <= 27) || 'El campo solo acepta máximo 27 dígitos',
            v => !v || /^[\-]{0,1}?\d{1,3}[\.]\d{1,17}$/.test(v) || 'Expresión no valida para la LATITUD'
         ],
         E:[
            v => !!v || 'El campo es obligatorio',
            v => (v && v.length <= 27) || 'El campo solo acepta máximo 27 dígitos',
            v => !v || /^[\-]{0,1}?\d{1,3}[\.]\d{1,17}$/.test(v) || 'Expresión no valida para la LONGITUD'
         ],
      },
      Regex:{
         'A': /^(\*|[-0-9]{1,8})$/,
         'B': /^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{1,100}$/,  
         'C': /^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{0,100}$/,  
         'D': /^[\-]{0,1}?\d{1,3}[\.]\d{1,17}$/,  
         'E': /^[\-]{0,1}?\d{1,3}[\.]\d{1,17}$/,  
      },
      columnsBD:{
         'A': 'numero',
         'B': 'nombre',
         'C': 'sede',
         'D': 'latitud',
         'E': 'longitud',
      },
      Dialog_item:{
         Actived:false,
         CRUD:"",
         Title:"AFROMEXICANA",
         items:{
            id_mun: 0,
            search: '',
            headers: [],
            // IDs: [],
            rows: [],  
         },
         totals:{
            TotalM:0,
            TotalH:0,
            Total:0
         }
      },
      TownHall:[],
   },
   mutations: {},
   actions: {

      CRUD_DOMS: async function({state, dispatch}, element){
         // console.log('CRUD_DOMS -->', element);
         const TASKS = {
            'editCell': async () =>{
               // console.log('CRUD_DOMS -->', element);
               await dispatch('cancelEdit', 'all');
               state.editinCells[element.column] = element.id;
               let val = element['value'];
               if(element['value'] != null){
                  val = await dispatch('formatNumber', {type: 1, value: element['value']}, { root: true });
               }
               state.Forms.txt_value = val;
            },
            'save_item': async () =>{
               let id = element.id;
               const itemIndex = await state.DataTable.Items.findIndex(element => {return element.id == id});
               state.DataTable.Items[itemIndex][element.column] = state.Forms.txt_value;  
               await dispatch('cancelEdit', 'all');
            }
            // '': async () =>{}
         }
         TASKS[element.task] ? await TASKS[element.task]() : console.log('!task not found¡');
      },
      CRUD_ELEMENT: async function({state, dispatch}, element){

         try {
            if(element.Task == 'saveCell'){
               const regex_ =  state.Regex[element.column] ? state.Regex[element.column] : '';
               if(!regex_.test(state.Forms.txt_value)){ 
                  return await dispatch('SendNotificatios', 'No cumple con las características requeridas', { root: true })
               }
            }   
         } catch (error) {
            return console.log(error);  
         }
         
         // return;
         state.dataSend = {};  
         const TASKS = {
            'saveCell': async () => {
               const columnBD =  state.columnsBD[element.column] ? state.columnsBD[element.column] : '';
               state.dataSend = {
                  token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                  task: 2,
                  column: columnBD, 
                  id: element.id,
                  value: state.Forms.txt_value,
               };
            },
            //----------------------------------------
            // 'send_item': async () => { },
         };
         TASKS[element.Task] ? await TASKS[element.Task]() : console.log('¡Task ELEMENT not found!');   

         if(!state.dataSend.hasOwnProperty('task')){  return console.log('¡undefined task!');   }
         if(state.dataSend.Task == 0){ return console.log('¡undefined task!');}

         // console.log(state.dataSend);
         // console.log(this.state.http + this.state.uri + '?type=crud', state.dataSend);
         // return;

         try {
            await axios.post(this.state.http + this.state.uri + '?type=crud', state.dataSend)
            .then((response) => {
               // console.log(response.data.result);
               let server_res = response.data.result;
               if(response.data.status){ 
                  dispatch('CRUD_DOMS', server_res); 
               } else { alert(response.data.message); }
            }, error => { 
               console.log(error.response.data);
            }, {timeout: 5000});
         } catch (error) {
            // console.log(error);
            // alert("Error al guardar / actualizar lo datos");
         }


      },
      getRule: async function({state}, rule){
         const result = state.Rules[rule] ? await state.Rules[rule] : [];
         return result;
      },
      cancelEdit: async function({state}, column){
         // console.log('cancelEdit -->', column);
         if(column === 'all'){
            state.editinCells = await Object.keys(state.editinCells).reduce((acc, key) => {
               acc[key] = null;
               return acc;
            }, {});
         }else{
            state.editinCells[column] = null;
         }
         state.Forms.txt_value = '';
      },
      
   },
   methods:{
      
   },
   getters: {},
   computed:{
   }

}