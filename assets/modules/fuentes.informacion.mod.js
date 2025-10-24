export default {
   namespaced: true,
   state: {
      title: "Fuentes de información de los indicadores",
      indicators:[],
      dataTable: {
         search: '',
         txt_search: '',
         per_page:10,
         headers: [
            { text: 'ID', value: 'id', class:"bg-dark white--text", width: '5%', sortable: false },
            { text: 'Indicador', value: 'indicator', class:"bg-dark white--text", width: '15%' },
            { text: 'Descripción', value: 'desc_', class:"bg-dark white--text", width: '50%', align: 'justify', sortable: false },
            { text: 'Link', value: 'link', class:"bg-dark white--text", width: '20%', align: 'justify', sortable: false },
            { text: 'Actions', value: 'actions', class:"bg-dark white--text", width: '10%', align: 'center', sortable: false, },
         ],
         items: []
      },
      dataSend:{},
      dialog_item:{
         actived:false,
         title:"",
         items:{},
      },
      forms:{
         id:0,
         indicator:'',
         desc:'',
         link:'',
         status: true,
      },
      rules:{  
         indicator: [
            v => !!v || 'Se requiere el campo'
         ],
         desc: [
            v => !!v || 'Se requiere el campo',
            v => (v && v.length <= 500) || 'El campo debe tener menos de 500 carácteres',
         ],
         link: [
            v => !v || v.length <= 150 || 'El campo debe tener menos de 150 caracteres',
         ]
      },
   
   },
   mutations: {},
   actions: {
      getItems: async function({state}, values){
         try {
            await axios.get(values.http + values.uri + '?type=items')
            .then((response) => { 
               // console.log(response.data.result);
               if(response.data.status == 200){
                  state.dataTable.items = response.data.result;
               }
            }, error => { 
               console.log(error.response.data);
            });
         } catch (error) {
            console.log(error);
         }
      },
      getIndicators: async function({state}, values){
         try {
            await axios.get(values.http + values.uri + '?type=indicators')
            .then((response) => { 
               // console.log(response.data.result);
               if(response.data.status == 200){
                  state.indicators = response.data.result;
               }
            }, error => { 
               console.log(error.response.data);
            });
         } catch (error) {
            console.log(error);
         }
      },
      CRUD_DOMS: async function({state, dispatch}, element){
         // console.log('CRUD_DOMS -->', element);
         const { indicator, desc, link, status } = state.forms;
         const TASKS = {
            'save_item': async () =>{
               const find = state.indicators.find(item => {return item.id == indicator});
             
               if(find){
                  state.dataTable.items.push({
                     id: element.id,
                     indicator: find.description,
                     desc_ :desc,
                     link,
                     status: (status)? 1:0
                  });
               }

               await dispatch('SendNotificatios', '¡registro guardado correctamente!', { root: true })
               state.dialog_item.actived = false;

            },
            'update_item': async () =>{
               const find = state.indicators.find(item => {return item.id == indicator});
               const index = state.dataTable.items.findIndex(item => {return item.id == element.id});
               if(index != -1){
                  if(find){
                     state.dataTable.items[index] = {
                        ...state.dataTable.items[index],
                        indicator: find.description,
                        desc_: desc,
                        link,
                        status: status ? 1 : 0
                     };
                     await dispatch('SendNotificatios', '¡registro actualizado correctamente!', { root: true })
                     state.dialog_item.actived = false;
                  }
               }
            },
            // '': async () =>{},
         }
         TASKS[element.task] ? await TASKS[element.task]() : console.log('!task not found¡');
      },
      CRUD_ELEMENT: async function({state, dispatch}, element){
         // console.log(element);
         // return
         try {      
            await (state.forms.link == '') ? state.forms.link = null : '';
            state.dataSend = {};  
            
            const TASKS = {
               'send_item': async () => { // new user
                  const { id, indicator, desc, link, status } = state.forms;
                  state.dataSend = {
                     token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                     task: 0,
                     params: {}
                  };

                  if(id == 0){
                     state.dataSend.task = 1; // new item
                     state.dataSend.params = { indicator, desc, link, status };
                  }else{
                     state.dataSend.task = 2; // update item
                     state.dataSend.params = { id, indicator, desc, link, status };
                  }
               },
               'status_item': async () => { // change status by user
                  state.dataSend = {
                     token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                     task: 2,
                     params: {
                        id: element.id,
                        status: (element.value === true) ? 1 : 0,
                     }
                  };
               } 
               //----------------------------------------
            };
            TASKS[element.task] ? await TASKS[element.task]() : console.log('¡Task ELEMENT not found!');   
            
            if(!state.dataSend.hasOwnProperty('task')){  return console.log('¡undefined task!');   }
            
            // console.log(state.dataSend);
            // const server_res = {task: 'update_item',  id: 5};
            // dispatch('CRUD_DOMS', server_res); 
            // return
            await axios.post(this.state.http + this.state.uri + '?type=crud', state.dataSend)
            .then((response) => {
               // console.log(response.data.result);
               let server_res = response.data.result;
               if(response.data.status == 200){ 
                  dispatch('CRUD_DOMS', server_res); 
               } else { alert(response.data.result); }

            }, error => { 
               console.log(error.response.data);
            });

         } catch (error) {
            return console.log(error);  
         }

      }
   },
   methods:{
      
   },
   getters: {},
   computed:{
      
   }

}