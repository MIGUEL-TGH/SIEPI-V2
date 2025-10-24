export default {
   namespaced: true,
   state: {
      Title: "Economía",
      DataTable: {
         Search: '',
         Headers: [
            { text: 'ID', value: 'Id', class:"bg-dark white--text", width: '5%' },
            { text: 'Municipio', value: 'Programa', class:"bg-dark white--text" },
            { text: 'Región', value: 'Programa', class:"bg-dark white--text" },
            { text: 'Grado de Marginación Municipal', value: 'Programa', class:"bg-dark white--text" },
            { text: 'Intensidad Migratoria', value: 'Programa', class:"bg-dark white--text" },
            { text: 'Poblacion 2020', value: 'Programa', class:"bg-dark white--text" },
            { text: 'ACTIONS', value: 'Status', sortable: false, width: '10%', class:"bg-dark white--text", align: 'center'}
         ],
         Items: [],
      },
   },
   mutations: {},
   actions: {  
   },
   methods:{
   },
   getters: {},
   computed:{
   }

}