export default {
   namespaced: true,
   state: {
      title: "Actualizar Contraseña",
      dataSend: {}
   },
   mutations: {},
   actions: {
      CRUD_ELEMENT: async function({state, dispatch}, element){
         try {
            state.dataSend = {};  
            const TASKS = {
               'update_pass': async () => {
                  state.dataSend = {
                     token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                     task: 5,
                     params: element.params
                  };
               }
            };
            TASKS[element.task] ? await TASKS[element.task]() : console.log('¡Task ELEMENT not found!');   
            
            if(!state.dataSend.hasOwnProperty('task')){  return console.log('¡undefined task!');   }
            if(state.dataSend.task == 0){ return console.log('¡undefined task!');}

            await axios.post(this.state.http + this.state.uri + '?type=crud', state.dataSend)
            .then((response) => {
               if(response.data.status == 200){
                  if(response.data.result.session == 1){
                     dispatch('SendNotificatios', '¡contraseña actualizada correctamente!', { root: true });
                     dispatch('logout', response.data.result, { root: true });
                  }
               }
            }, error => { 
               dispatch('SendNotificatios', error.response.data.result.replace("Error --> ", ""), { root: true });
            }, {timeout: 5000});

         } catch (error) {
            // return console.log(error);  
         } finally { }
         
      },
      getRule: async function({state}, rule){
         const result = state.Rules[rule] ? await state.Rules[rule] : [];
         return result;
      },
      cancelEdit: async function({state}, column){
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