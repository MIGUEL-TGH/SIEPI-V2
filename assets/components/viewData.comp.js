//Componente de dialogo de información 
export default Vue.component('viewdata_comp',{
   template://html 
      `<div>
         <template>
            <v-dialog v-model="Dialog_data.actived" scrollable max-width="700px" persistent>
               <v-card>
                  <v-toolbar dark class="toolbar title-dialog" color="#424242">
                     Municipio: <strong style="padding-left: 5px;">{{Dialog_data.title}}</strong>
                     <v-spacer></v-spacer>
                     <v-btn  @click="Dialog_data.actived = false, Dialog_data.panel = false" color="error" small fab> <v-icon>mdi-close</v-icon> </v-btn>
                  </v-toolbar>
                  <v-card-text>
                     <br>
                     <h2 class="title-indicator">{{Dialog_data.indicator}}</h2>
            
                     <v-divider></v-divider>
                     En desarrollo
                     <template v-if="Dialog_data.table_01">
                        Hola mundo
                        <v-data-table :headers="Dialog_data.table_01.headers" :items="Dialog_data.table_01.items" hide-default-header hide-default-footer class="table-map elevation-2" dense :mobile-breakpoint="0">
                           <template v-slot:item="{ item }">
                              <tr>
                                 <td v-for="(header, index) in Dialog_data.table_01.headers" :key="index" :class="setClass(header.value, Dialog_data.table_01.columns_style)">
                                    {{ item[header.value] }}
                                 </td>
                              </tr>
                           </template>
                        </v-data-table>
                     </template>

                     <!--<template>
                        <br>
                        <v-expansion-panels v-model="Panel">
                           <v-expansion-panel v-for="(element, index) in Dialog_data.panels" :key="index">
                              <v-expansion-panel-header><strong>{{element.panel_header}}</strong></v-expansion-panel-header>
                              <v-expansion-panel-content>
                                 <h6 v-if="element.label">{{element.label}} <br> <br></h6>

                                 <template v-if="element.table">
                                    <v-data-table :headers="element.table.headers" :items="element.table.items" :hide-default-header="element.table.header" :items-per-page="-1" hide-default-footer class="table-map elevation-2" dense :mobile-breakpoint="0">
                                       <template v-slot:item="{ item }">
                                          <tr>
                                             <td v-for="(header, index) in element.table.headers" :key="index" :class="setClass(header.value, element.table.columns_style)">
                                                {{ item[header.value] }}
                                             </td>
                                          </tr>
                                       </template>
                                    </v-data-table>
                                 </template>

                                 <template v-if="element.chart.attributes">   
                                    <v-divider></v-divider>
                                    <h6>{{element.label_chart}}</h6>
                                    <vue-chart :type="element.chart.name" :data="element.chart.attributes"></vue-chart>
                                 </template>

                              </v-expansion-panel-content>
                           </v-expansion-panel>
                        </v-expansion-panels>
                     </template>-->

                  </v-card-text>
               </v-card>
            </v-dialog>
         </template>
      

         <!--<section>
            <div class="principal">
               <h2 style="font-size: min(max(20px, 5vw), 50px)!important;"> {{test}}</h2>
            </div>
         </section>-->
      </div>`,
   computed:{
      ...Vuex.mapState([
         // 'test',
         'Dialog_data'
      ])
    },
   methods:{
      // ...Vuex.mapMutations([]),
      // ...Vuex.mapActions('afroMod',[
          
      // ]) ,
      ...Vuex.mapActions([
         'setClass'
      ]) ,
    
   }
});