export default {
   namespaced: true,
   state: {
      title: "Permisos de Usuario",
      dataTable: {
         search: '',
         txt_search: '',
         per_page:10,
         headers: [
            { text: 'ID', value: 'id', sortable: false, width: '10%', class:"bg-dark white--text" },
            { text: 'Nombre', value: 'name', class:"bg-dark white--text" },
            { text: 'Actions', value: 'actions', sortable: false, width: '10%', class:"bg-dark white--text", align: 'center'},
         ],
         items: [],
      },
      dialog_item:{
         actived:false,
         title:"Módulos",
         id_user: 0,
         // items:{},
         table:{
            headers: [
               { text: '#', value: 'num', sortable: false, width: '10%', class:"bg-dark white--text" },
               { text: 'Módulos', value: 'module', class:"bg-dark white--text" },
               { text: 'Sub Módulos', value: 'sub_module', class:"bg-dark white--text" },
               { text: '', value: 'actions', sortable: false, width: '10%', class:"bg-dark white--text", align: 'center'},
            ],
            items: [],
         }
      },
   },
   mutations: {},
   actions: {
      getAllModules: async function({state}, values){
         try {
            const dataSend = {
               token: window.localStorage.siepi || ''
            }
            const response = await axios.post(`${this.state.http}${this.state.uri}?type=all_modules`, dataSend, { timeout: 5000 });
            if(response.data.status == 200){
               let result = response.data.result; 
               // await result.sort((a, b) => {
               //    if (a.module < b.module) {
               //       return -1;
               //    }
               //    if (a.module > b.module) {
               //       return 1;
               //    }
               //    return 0;
               // });
               state.dialog_item.table.items = result;
            }

         } catch (error) {
            console.error(error.response ? error.response.data : error);
         } finally { }
      },
      getPermissions: async function({state}, values){
         try {
            state.dialog_item.id_user = values.id;
            const token = window.localStorage.siepi || '';
            const dataSend = { token, id: values.id };
            const response = await axios.post(`${this.state.http}${this.state.uri}?type=permissions`, dataSend, { timeout: 5000 });
     
            state.dialog_item.actived = true;
            if (response.data.status === 200 && response.data.result !== 400) {
               const permissions = response.data.result;
   
               permissions.forEach(element => {
                  const index = state.dialog_item.table.items.findIndex(item => item.id === element.id && item.type === element.type);
                  if (index !== -1) {
                     state.dialog_item.table.items[index].status = true;
                  }
               });
            }
         } catch (error) {
             console.error(error.response ? error.response.data : error);
             state.dialog_item.actived = false;
         }
      },
      CRUD: async function({state, dispatch}){
         try {
            this.state.dialog_loader = true;
            const findModules = state.dialog_item.table.items.filter(item => {return item.status == true});
            const permissions = await findModules.map(item => ({
               id: item.id,
               type: item.type
            }));

            let dataSend = {
               token: window.localStorage.siepi || '',
               id: state.dialog_item.id_user,
               params: permissions
            }
            const response = await axios.post(`${this.state.http}${this.state.uri}?type=crud_permissions`, dataSend, { timeout: 5000 });     
            if( response.data.status === 200 ) {
               await dispatch('SendNotificatios', '¡permisos de usuario guardados correctamente!', { root: true })
               state.dialog_item.actived = false;
            }

         } catch (error) {
            return console.log(error);  
         }  finally { 
            this.state.dialog_loader = false;
         }       
      
      },
   },
   methods:{
      
   },
   getters: {},
   computed:{
      
   }

}