export default {
   namespaced: true,
   state: {
      title: "Reporte de Visitas",
      dataTable: {},
   },
   mutations: {},
   actions: {
      getVisits: async function({state, dispatch}, type){
         // console.log("getVisits() -->", type);
         try {
            let res = { }; 
            await axios.get(this.state.http + this.state.uri + '?type=' + type + '&token=' + window.localStorage.siepi)
            .then((response) => {
               if(response.data.status == 200){
                  res = response.data.result;
               }
            }, error => { 
               console.log(error.response.data);
            }, {timeout: 5000});

            if(res.hasOwnProperty('table')){
               const table = await dispatch('setTables', { type: 'visits', table: res.table}, { root: true })
               state.dataTable = table;
            }

         } catch (error) {
            console.log(error);
            alert("Error al guardar / actualizar lo datos");
         }
      },      
   },
   methods:{
      
   },
   getters: {},
   computed:{
      
   }

}