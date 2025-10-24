export default {
   namespaced: true,
   state: {
      Title: "Afromexicana",
      typeTask:'',
      dataSend:{},
      editingCell: null,
      editinCells:{
         M: null,
         H: null
      },
      DataTable: {
         Search: '',
         Headers: [
            { text: 'No.', value: 'Index', class:"bg-dark white--text", width: '8%' },
            // { text: 'ID', value: 'Id', class:"bg-dark white--text", width: '8%' },
            { text: 'Municipio', value: 'Municipio', class:"bg-dark white--text", width: '25%', align: 'left' },
            { text: 'Región', value: 'Region', class:"bg-dark white--text", width: '20%', align: 'left' },
            { text: 'Población Mujeres', value: 'TotalM', class:"bg-dark white--text", align: 'center' },
            { text: 'Población Hombres', value: 'TotalH', class:"bg-dark white--text", align: 'center' },
            { text: 'Población Total', value: 'Total', class:"bg-dark white--text", align: 'center' },
            { text: 'Actions', value: 'Btn', sortable: false, width: '10%', class:"bg-dark white--text", align: 'center'}
         ],
         Items: [],
      },
      Forms:{
         txt_value:'',

         Txt_M:'',
         // Txt_Mun:'',
         // Region:'',
      },
      Rules:{
         Txt_num:[
            v => !!v || 'El campo es obligatorio',
            v => (v && v.length <= 5) || 'El campo de texto acepta solo números de 1 - 9, con un máximo de 8 carácteres ó un * en caso de no contar con una cantidad definida',
            v => !v || /^(\*|\d{1,5})$/.test(v)|| 'No cumple con las características requeridas'
         ]
      },
      Dialog_item:{
         Actived:false,
         CRUD:"",
         Title:"AFROMEXICANA",
         items:{
            id_mun: 0,
            search: '',
            headers: [],
            IDs: [],
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
      getData: async function({state, dispatch }){
         try {
            let Items = [], result = [];
            await axios.get(this.state.http + this.state.uri + '?type=admin')
            .then((response) => {
               if(response.data.status == 200){ 
                  Items = response.data.result;
                  // console.log(Items);
               }
            }, error =>{ 
               console.log(error.response.data);
               // if(error.response.data.status == 303 || error.response.data.status == 400){ }
            });   
                        
            if(Items.length){
               for(const [index, element] of Items.entries()){
                  element.Index = index + 1;
                  result.push(element);
               }
            }

            state.DataTable.Items = result;
         } catch (error) {
            console.log(error);
         }
      }, 
      getDataID: async function({state, dispatch}, value){
         try {
            // console.log(this.state.http + this.state.uri + '?type=infoID&id=' + value.id);
            await axios.get(this.state.http + this.state.uri + '?type=infoID&id=' + value.id)
            .then((response) => {
               if(response.data.status == 200){
                  // console.log(response.data.result.items);
                  state.Dialog_item.items.id_mun = value.id;
                  state.Dialog_item.items.headers = response.data.result.headers;
                  state.Dialog_item.items.IDs = response.data.result.IDs;
                  state.Dialog_item.items.rows = response.data.result.items;
                  state.Dialog_item.Actived = true;

                  const find = state.DataTable.Items.find(element => {return element.id_mun == value.id});
                  state.Dialog_item.totals.TotalM = find.TotalM;
                  state.Dialog_item.totals.TotalH = find.TotalH;
                  state.Dialog_item.totals.Total = find.Total;
                  
               }
            }, error =>{ 
               console.log(error.response.data);
            });   
         
         } catch (error) {
            // console.log(error);
         }
      },
      getTownHall: async function({state, dispatch}){
         try {
            if(state.TownHall.length != 0){ return; }
            console.log("Seatch");
            if(window.localStorage.siepi){
               await axios.post(this.state.http + 'townhall?type=byIndicator', {token: window.localStorage.siepi})
               .then((response) => {
                  if(response.data.status == 200){ 
                     state.TownHall = response.data.result;
                  }
               }, error =>{ 
                  // console.log(error.response.data);
               }); 
            }
         } catch (error) {
            // console.log(error);
         }
      },
      FilterRegion: async function({state, dispatch}, value){
         try {
            console.log(value);
         } catch (error) {
            console.log(error);
         }
      },
      CRUD_DOMS: async function({state, dispatch}, value){
         // console.log('CRUD_DOMS -->', value);

         const TASKS = {
            'edit_item': async () =>{
               await dispatch('getDataID', {id: value.id_mun});
               state.typeTask = 2;
            },
            'editCell': async () =>{
               // console.log('CRUD_DOMS -->', value);
               state.editinCells[value.gender] = value.column; 
               const val = await dispatch('formatNumber', {type: 1, value: value['value']}, { root: true });
               state.Forms.txt_value = val;

               //----------------------------------------------
               // state.editingCell = value.column;
               // const val = await dispatch('formatNumber', {type: 1, value: value['value']}, { root: true });
               // state.Forms.Txt_M = val;
              },
            'save_item': async () =>{
               // console.log('CRUD_DOMS -->', value);
               let id_mun = state.Dialog_item.items.id_mun;
               const itemIndex = await state.DataTable.Items.findIndex(element => {return element.id_mun == id_mun});
               // const rowIndex =  await state.Dialog_item.items.rows.findIndex(row => row.column === state.editingCell);
               // console.log(state.editinCells[value.gender]);
               const rowIndex =  await state.Dialog_item.items.rows.findIndex(row => row.column === state.editinCells[value.gender]);
               
               let item = state.DataTable.Items[itemIndex];
               let row =  state.Dialog_item.items.rows[rowIndex];
   
               const current_subtotal =  parseInt(item['Total' + value.gender]); //
               const current_cell = await dispatch('formatNumber', {type: 2, value: row[value.gender]}, { root: true });
               const subTotal_1 = current_subtotal - current_cell;
               // console.log(subTotal_1);
               // const new_cant = await dispatch('formatNumber', {type: 2, value: state.Forms.Txt_M}, { root: true });
               const new_cant = await dispatch('formatNumber', {type: 2, value: state.Forms.txt_value}, { root: true });
               const subTotal_2 = subTotal_1 + new_cant;
               
               state.DataTable.Items[itemIndex]['Total' + value.gender] = subTotal_2;
               // state.Dialog_item.items.rows[rowIndex][value.gender] = await dispatch('formatNumber', {type: 3, value: state.Forms.Txt_M}, { root: true });
               state.Dialog_item.items.rows[rowIndex][value.gender] = await dispatch('formatNumber', {type: 3, value: state.Forms.txt_value}, { root: true });
               await dispatch('cancelEdit');

               let TotalM = parseInt(state.DataTable.Items[itemIndex]['TotalM']);
               let TotalH = parseInt(state.DataTable.Items[itemIndex]['TotalH']);
               state.DataTable.Items[itemIndex]['Total'] = TotalM + TotalH;

               state.Dialog_item.totals.TotalM = TotalM;
               state.Dialog_item.totals.TotalH = TotalH;
               state.Dialog_item.totals.Total = TotalM + TotalH;
            }
            // '': async () =>{}
         }
         TASKS[value.Task] ? await TASKS[value.Task]() : console.log('!Task not found¡');
      },
      CRUD_ELEMENT: async function({state, dispatch}, value){
         if(value.Task == 'saveCell'){
            // if(!/^(\*|\d{1,5})$/.test(state.Forms.Txt_M)){ return alert('No cumple con las características requeridas') }
            if(!/^(\*|\d{1,5})$/.test(state.Forms.txt_value)){ return alert('No cumple con las características requeridas') }
         }

         state.dataSend = {};  
         const TASKS = {
            'saveCell': async () => { 
               state.dataSend = {
                  task: state.typeTask,
                  column: value.column, 
                  id: state.Dialog_item.items.IDs[value.gender],
                  value: state.Forms.txt_value,
                  gender :value.gender
               };
            },
            //----------------------------------------
            // 'send_item': async () => { },
         };
         TASKS[value.Task] ? await TASKS[value.Task]() : console.log('¡Task ELEMENT not found!');   

         if(!state.dataSend.hasOwnProperty('task')){  return console.log('¡undefined task!');   }
         if(state.dataSend.Task == 0){ return console.log('¡undefined task!');}

         // console.log(state.dataSend);
         // console.log(value.gender);
         // return;

         try {
            // let server_res = {
            //    Task: "save_item",
            //    gender: value.gender
            // };
            // await dispatch('CRUD_DOMS', server_res); 
            // return
            await axios.post(this.state.http + this.state.uri + '?type=crud', state.dataSend)
            .then((response) => {
               // console.log(response.data.result);
               let server_res = response.data.result;
               if(response.data.status){ 
                  dispatch('CRUD_DOMS', server_res); 
               } else { alert(response.data.message); }
            }, error => { 
               // console.log(error.response.data);
            }, {timeout: 5000});
         } catch (error) {
            // console.log(error);
            // alert("Error al guardar / actualizar lo datos");
         }


      },
      // saveCell: async function({state, dispatch}, item){
      //    const rowIndex = state.Dialog_item.items.rows.findIndex(row => row.column === item.id);
      //    state.Dialog_item.items.rows[rowIndex][item.type] = state.Forms.Txt_M; 
      //    await dispatch('cancelEdit');
      // },
      cancelEdit: async function({state}){
         // console.log('cancelEdit');
         state.editinCells.M = null;
         state.editinCells.H = null;
         state.Forms.txt_value = '';
         // ------------------------------         
         // state.editingCell = null;
         // state.Forms.Txt_M = '';
      },
   },
   methods:{
      
   },
   getters: {},
   computed:{
   }

}