export default Vue.component('report_visits_comp',{
   template://html
      `<div>
         <section>
            <div class="title-mod">
               <h2>{{title}}</h2>
            </div>
         </section>
         <section>
            <v-divider></v-divider>
            <template v-if="dataTable">
               <v-data-table :headers="dataTable.headers" :items="dataTable.items" :hide-default-header="dataTable.header" :items-per-page="-1" hide-default-footer class="elevation-2" dense :mobile-breakpoint="0">
                  <template v-slot:item="{ item }">
                     <tr>
                        <td  v-for="(header, index) in dataTable.headers" :key="index" :class="setClass({column:header.value, style:dataTable.columns_style})">
                           {{ item[header.value] }}
                        </td>
                     </tr>
                  </template>
               </v-data-table>
            </template>
         </section>
      </div>`,
   data(){
      return { };
   },
   computed:{
      ...Vuex.mapState('reportVisitsMod',[
         'title',
         'dataTable'
      ])
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'setClass'
      ]),
      ...Vuex.mapActions('reportVisitsMod',[
         'getVisits'
      ]),
      // setClass(column, items) {
      //    if (items.includes(column)) {
      //       return 'value-table'; 
      //    }else{
      //       return 'desc-table';
      //    }
      // },
   },
   created() {
      this.getVisits('global');
   },
});