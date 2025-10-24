export default Vue.component('fuentes_info_comp',{ //Fuentes de informacion de los indicadores
   template://html
      `<div>
         <section>
            <div class="title-mod">
               <h2>{{title}}</h2>
            </div>
         </section>

         <section>
            <v-container>
               <v-card-title class="content-title">
                  <p>{{parseInt(dataTable.items.length).toLocaleString()}} registros</p>
                  <v-spacer></v-spacer>
                  <v-text-field v-model="dataTable.txt_search" @keyup="keymonitor($event)" type="text" label="Buscar:" append-icon="mdi-magnify" hide-details>
                     <template v-slot:append-outer>
                        <v-btn color="primary" elevation="5" small @click="reset({task:'new_item'})">Nuevo</v-btn>
                     </template>
                  </v-text-field>
               </v-card-title>
               
               <v-form ref="form_table" @submit="onSubmit">
                  <v-data-table :headers="dataTable.headers" :items="dataTable.items" item-key="id" :search="dataTable.search" :items-per-page="dataTable.per_page"
                  class="elevation-5" loading-text="Cargando... espere por favor" dense :mobile-breakpoint="0">
                        <template v-slot:item.actions="{ item }">
                           <v-icon dense class="BtnHover"  color="green" @click="reset({task:'edit_item', item})"> mdi-pencil </v-icon>
                           <v-icon dense :color="(item.status == 1) ? 'green' : 'red'">mdi-circle</v-icon>
                        </template>
                  </v-data-table>
               </v-form>
            </v-container>
         </section>
            
         <!--POP-UPS-->
         <template>
            <v-dialog v-model="dialog_item.actived" scrollable max-width="600px" persistent>
               <v-card>
                  <v-toolbar dark class="text-h5" color="#9b162e"> {{dialog_item.title}} </v-toolbar>
                  <v-card-text style="max-height: 600px;">
                     <br>
                     <v-form ref="form_item" @submit="onSubmit">
                        <v-row>
                           <v-col cols="12" md="3" class="pa-1 row-center">
                              <v-switch v-model="forms.status" :label=" forms.status ? 'Activo': 'Inactivo'" filled style="margin-bottom: 15px !important;"></v-switch>
                           </v-col>
                           <v-col cols="12" md="9">
                              <v-autocomplete v-model="forms.indicator" :rules="rules.indicator" label="Selecciona indicador" :items="indicators" item-text="description" item-value="id" outlined></v-autocomplete>
                           </v-col>
                           <v-col cols="12" md="12">
                              <v-textarea v-model="forms.desc" :rules="rules.desc" label="Descripción del cita bibliográfica:" :counter="500" maxlength="500" rows="5" outlined ></v-textarea>
                           </v-col>
                           <v-col cols="12" md="12">
                              <v-text-field v-model="forms.link" counter maxlength="150" :rules="rules.link" type="text" label="Link:" dense outlined small-chips></v-text-field>
                           </v-col>
                        </v-row>
                     </v-form>
                  </v-card-text>
                  <v-divider></v-divider>
                  <v-card-actions>
                     <v-spacer></v-spacer>
                     <v-btn small @click="reset({task:'closed_item'})" elevation="5" color="error"> Cancelar </v-btn>
                     <v-btn small @click="submit({task:'send_item'})" elevation="5" color="primary"> Guardar </v-btn>
                  </v-card-actions>
               </v-card>
            </v-dialog>
            
            

         </template>

      </div>`,
   computed:{
      ...Vuex.mapState([
         'http',
         'uri'
      ]),
      ...Vuex.mapState('fuentesInformacionMod',[
         'title',
         'indicators',
         'dataTable',
         'dialog_item',
         'forms',
         'rules'
      ]),
   },
   methods:{
      ...Vuex.mapActions([]),
      ...Vuex.mapMutations('fuentesInformacionMod',[]),
      ...Vuex.mapActions('fuentesInformacionMod',[
         'getItems',
         'getIndicators',
      ]),

      //------------------------------------------------------------------------------------------------
      async reset(value){
         //Users --- form_item
         // console.log('reset -->' ,value);
         const RESET_ = {
            'new_item': async () => {
               this.forms.id = 0;
               // this.forms.indicator = '';
               // this.forms.desc = '';
               // this.forms.link = '';
               // this.forms.status = true;
               this.dialog_item.actived = true;
               await setTimeout(() => { this.$refs.form_item.reset(); }, "100");
            },
            'edit_item': async () => {
               this.dialog_item.actived = true;
               const { id, indicator, desc_, link, status } = value.item;
               const find = await this.indicators.find(element => {return element.description == indicator});

               this.forms.id = id;
               this.forms.indicator = find.id;
               this.forms.desc = desc_;
               this.forms.link = link;
               this.forms.status = (status == '1') ? true : false;
            },
            'closed_item': async () => {
               this.$refs.form_item.reset();
               this.dialog_item.actived = false;
            }
         };
         RESET_[value.task] ? RESET_[value.task]() : console.log('¡Reset not found!');
      },
      async submit(e){
         // console.log('submit -->', e);
         const Message = "Favor de llenar los campos obigatorios ó corregir los campos que están en rojo";
         const SUBMIT_ = {
            'send_item': async () => {
               this.$refs.form_item.validate();
               (this.$refs.form_item.validate()) ? setTimeout(() => { this.$store.dispatch('fuentesInformacionMod/CRUD_ELEMENT', {task:e.task, http: this.http, uri: this.uri}); }, "100") : alert(Message) ;
            },
            'status_item': async () => {
               this.$store.dispatch('fuentesInformacionMod/CRUD_ELEMENT', e);
            },

         };
         SUBMIT_[e.task] ? SUBMIT_[e.task]() : console.log('¡Submit not found!');
      },
      keymonitor(e) {
         if(e.key == "Enter"){
            this.dataTable.search = this.dataTable.txt_search;
         }

         if(e.key == "Backspace" && this.dataTable.txt_search.length == 0){
            this.dataTable.search = '';
         }
      },
      onSubmit(e) {
         if (!this.htmlSubmit) { e.preventDefault(); }
      },
   },
   async created() {
      this.getItems({ http: this.http, uri: this.uri });
      this.getIndicators({ http: this.http, uri: this.uri });

   },
});

