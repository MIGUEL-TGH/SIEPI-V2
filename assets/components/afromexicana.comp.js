//Componente Afromexicana
export default Vue.component('afromexicana_comp',{
   template://html 
      `<div> 
         <section>
            <div class="title-mod">
               <h2>{{Title}}</h2>
            </div>
         </section>
         
         <section>
               <v-card-title class="content-title">
                  <!--<br>-->                  
                  <p>{{DataTable.Items.length}} registros</p>
                  <v-spacer></v-spacer>
                  <v-text-field type="text" label="Buscar:" v-model="DataTable.Search" append-icon="mdi-magnify" hide-details>
                     <template v-slot:append-outer>
                        <!--<v-btn color="primary" elevation="5" small >Nuevo</v-btn>-->
                     </template>
                  </v-text-field>
               </v-card-title>

               <v-data-table :headers="DataTable.Headers" :items="DataTable.Items" :search="DataTable.Search" :items-per-page="10" class="table-global elevation-5" :mobile-breakpoint="0"> <!---dense--->
                  <template v-slot:item.TotalM="{ item, index }">
                     <strong>{{ parseInt(item.TotalM).toLocaleString() }}</strong>

                  </template>
                  <template v-slot:item.TotalH="{ item, index }">
                     <strong>{{ parseInt(item.TotalH).toLocaleString() }}</strong>

                  </template>
                  <template v-slot:item.Total="{ item, index }">
                     <strong>{{ parseInt(item.Total).toLocaleString() }}</strong>
                  </template>
                
                  <template v-slot:item.Btn="{ item, index }">
                     <v-icon class="mr-1 BtnHover" color="green" @click="reset({Task:'edit_item', id_mun:item.id_mun})"> mdi-pencil </v-icon>
                  </template>
               </v-data-table>
         </section>
 
         <template>
 
            <v-dialog v-model="Dialog_item.Actived" scrollable max-width="1000px" persistent> <!--1300px--->
               <v-card>
                  <v-toolbar dark class="text-h5" color="#9b162e"> 
                     {{Dialog_item.Title}} 
                     <v-spacer></v-spacer>
                     <v-btn icon dark @click="reset({Task:'closed_item'})">
                        <v-icon>mdi-close</v-icon>
                     </v-btn>
                  </v-toolbar>
                  <v-card-text style="max-height: 600px;">
                     <br>                     

                     <!--<v-form ref="form_item" @submit="onSubmit"> </v-form>-->
                     <v-row>
                        <v-col cols="4" class="centered">
                           <h5 class="title_2"> Total M: {{ parseInt(Dialog_item.totals.TotalM).toLocaleString() }}</h5>
                        </v-col>
                        <v-col cols="4" class="centered">
                           <h5 class="title_2"> Total H: {{ parseInt(Dialog_item.totals.TotalH).toLocaleString() }}</h5>
                        </v-col>
                        <v-col cols="4" class="centered">
                           <h5 class="title_2"> Total: {{ parseInt(Dialog_item.totals.Total).toLocaleString() }}</h5>
                        </v-col>
                     </v-row>
                     <v-divider style="margin-top: 5px"></v-divider>
                     <v-card-title class="content-title">
                        <p>{{Dialog_item.items.rows.length}} registros</p>
                        <v-spacer></v-spacer>
                        <v-text-field type="text" label="Buscar:" v-model="Dialog_item.items.search" append-icon="mdi-magnify" hide-details> </v-text-field>
                     </v-card-title>
                     <v-data-table :headers="Dialog_item.items.headers" :items="Dialog_item.items.rows" :search="Dialog_item.items.search" :items-per-page="-1" class="table-global elevation-5" :mobile-breakpoint="0" dense> <!---dense--->

                        <template v-slot:item.M="{ item }"> <!--MUJERES-->
                           <template v-if="editinCells.M === item.column">
                              <v-form ref="form_item" @submit="onSubmit"><!--counter maxlength="5"-->
                                 <v-text-field dense solo ref="value_1" v-model="Forms.txt_value" :rules="Rules.Txt_num" @keyup.enter="submit({Task:'saveCell', column: item.column, gender:'M'})" @blur="cancelEdit" ></v-text-field>
                              </v-form>
                           </template>
                           <template v-else>
                              <td @dblclick="reset({Task:'editCell', column: item.column, value: item.M, gender: 'M'})"> {{ item.M }} </td>
                           </template>
                        </template>
                        <template v-slot:item.H="{ item }"> <!--HOMBRES-->
                           <template v-if="editinCells.H === item.column">
                              <v-form ref="form_item" @submit="onSubmit">
                                 <v-text-field dense solo ref="value_1" v-model="Forms.txt_value" :rules="Rules.Txt_num" @keyup.enter="submit({Task:'saveCell', column: item.column, gender:'H'})" @blur="cancelEdit" ></v-text-field>
                              </v-form>
                           </template>
                           <template v-else>
                              <td @dblclick="reset({Task:'editCell', column: item.column, value: item.H, gender: 'H'})"> {{ item.H }} </td>
                           </template>
                        </template>
                     </v-data-table>
                  </v-card-text>
               </v-card>
            </v-dialog>
         </template>
      </div>`,

   computed:{
      // ...Vuex.mapState([]),
      ...Vuex.mapState('afroMod',[
         'Title',
         'DataTable',
         'Dialog_item',
         'Forms',
         'Rules',
         'TownHall',
         'editingCell',
         'editinCells'
      ])
    },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions('afroMod',[
         'getDataID',
         'FilterRegion',
         'cancelEdit',
         'CRUD_DOMS',
         'CRUD_ELEMENT'
      ]),

      onSubmit(e) {
         if (!this.htmlSubmit) { e.preventDefault(); }
      },
      async reset(value){
         //Users --- form_item
         // console.log('reset -->' ,value);
         const RESET_ ={
            'edit_item': async () => {        
               this.CRUD_DOMS(value);
            },
            'closed_item': async () => {
               this.Dialog_item.Actived = false;
            },
            'editCell': async () => {
               await this.CRUD_DOMS(value);
               this.$refs.value_1.focus();
            },
         };
         RESET_[value.Task] ? RESET_[value.Task]() : console.log('¡Reset not found!');
      },

      async submit(value){
         //Users --- form_item
         // console.log('submit -->' ,value);
         let Message = "Favor de llenar los campos obigatorios ó corregir los campos que están en rojo";

         const SUBMIT_ = {
            'saveCell': async () => {               
               await this.CRUD_ELEMENT(value);               
               // this.$refs.form_item.validate();
               // (this.$refs.form_item.validate()) ? setTimeout(() => {this.CRUD_ELEMENT(value); }, "100") : alert(Message) ;
            },
         };
         SUBMIT_[value.Task] ? SUBMIT_[value.Task]() : console.log('¡Submit not found!');
      },

    }
 });