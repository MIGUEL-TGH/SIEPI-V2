export default Vue.component('user_permissions_comp',{
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
                  <p>{{parseInt(dataTable.items.length).toLocaleString()}} usuarios</p>
                  <v-spacer></v-spacer>
                  <v-text-field v-model="dataTable.txt_search" @keyup="keymonitor($event)" type="text" label="Buscar:" append-icon="mdi-magnify" hide-details> </v-text-field>
               </v-card-title>

               <v-data-table :headers="dataTable.headers" :items="dataTable.items" item-key="id" :search="dataTable.search" 
                  :items-per-page="dataTable.per_page" class="elevation-5" loading-text="Cargando... espere por favor" dense :mobile-breakpoint="0">
                  <template v-slot:item.actions="{ item }">
                     <v-icon dense @click="submit({task:'get_permissions',id:item.id})" class="BtnHover" title="ver permisos" color="green"> mdi-pencil </v-icon>
                  </template>
               </v-data-table>

            </v-container>
         </section>

         <!--POP-UPS-->
         <template>
            <v-dialog v-model="dialog_item.actived" scrollable max-width="600px" persistent>
               <v-card>
                  <v-toolbar dark class="text-h5" color="#9b162e"> {{dialog_item.title}} </v-toolbar>
                  <v-card-text style="max-height: 600px;">
                     <br>
                     <v-data-table :headers="dialog_item.table.headers" :items="dialog_item.table.items" item-key="sub_module" hide-default-footer
                     :items-per-page="-1" class="elevation-5" loading-text="Cargando... espere por favor" dense :mobile-breakpoint="0">
                        <template v-slot:item.num="{ index }">
                           {{index + 1}}
                        </template>
                        <template v-slot:item.actions="{ item }">
                        <v-simple-checkbox v-model="item.status" color="success"></v-simple-checkbox>
                        </template>
                     </v-data-table>
                  </v-card-text>
                  <v-divider></v-divider>
                  <v-card-actions>
                     <v-spacer></v-spacer>
                     <v-btn small @click="reset()" elevation="5" color="error"> Cancelar </v-btn>
                     <v-btn small @click="submit({task:'send_item'})" elevation="5" color="primary"> Guardar </v-btn>
                  </v-card-actions>
               </v-card>
            </v-dialog>          
         </template>
      </div>`,
   computed:{
      ...Vuex.mapState('userPermissionsMod',[
         'title',
         'dataTable',
         'dialog_item'
      ])
   },
   data() {
      return {
      };
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'getData'
      ]),
      ...Vuex.mapActions('userPermissionsMod',[
         'getAllModules',
         'getPermissions',,
         'CRUD'
      ]),

      keymonitor(e) {
         if(e.key == "Enter"){
            this.dataTable.search = this.dataTable.txt_search;
         }
         if(e.key == "Backspace" && this.dataTable.txt_search.length == 0){
            this.dataTable.search = '';
         }
      },
      async reset(){
         this.dialog_item.actived = false;
         setTimeout(() => { 
            this.dialog_item.table.items.forEach(item => {
               item.status = false;
            });
         }, "250");
      },
      async submit(e){
         // console.log('submit -->', e);
         const message = "Favor de llenar los campos obigatorios ó corregir los campos que están en rojo";
         const SUBMIT_ = {
            'get_permissions': async () =>{
               // this.dialog_item.actived = true;
               await this.getPermissions(e);
            },
            'send_item': async () =>{
               await this.CRUD();
            }
         };
         SUBMIT_[e.task] ? SUBMIT_[e.task]() : console.log('¡Submit not found!');
      },

      //-----------------------------------------------------------------------------------------------
      onSubmit(e) {
         if (!this.htmlSubmit) { e.preventDefault(); }
      },
   },
   async created() {
      const items = await this.getData();
      this.dataTable.items = items;
      await this.getAllModules();
   },
});