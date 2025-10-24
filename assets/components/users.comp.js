export default Vue.component('users_comp',{ //Usuarios
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
                  <v-text-field v-model="dataTable.txt_search" @keyup="keymonitor($event)" type="text" label="Buscar:" append-icon="mdi-magnify" hide-details>
                     <template v-slot:append-outer>
                        <v-btn color="primary" elevation="5" small @click="reset({task:'new_item'})">Nuevo</v-btn>
                     </template>
                  </v-text-field>
               </v-card-title>
               
               <v-form ref="form_table" @submit="onSubmit">
                  <v-data-table :headers="dataTable.headers" :items="dataTable.items" item-key="id" :search="dataTable.search" :items-per-page="dataTable.per_page"
                     @pagination="onPagination" @current-items="handleCurrentItems" class="elevation-5" loading-text="Cargando... espere por favor" dense :mobile-breakpoint="0">

                        <template v-slot:item.img="{ item, index }">
                           <!--@click="$store.dispatch('Expand_img',item.Foto.url)"-->
                           <v-img :src="item.img.url" :key="index" @click="submit({task:'expand_img', url:item.img.url, fileName:item.img.name})" class="imgHover" max-width="80" max-height="80" contain loading="lazy"> 
                              <template v-slot:placeholder>
                                 <v-row class="fill-height ma-0" align="center" justify="center" >
                                    <v-progress-circular indeterminate color="grey lighten-5" ></v-progress-circular>
                                 </v-row>
                              </template>
                           </v-img>
                        </template>
                        
                        <template v-slot:item.actions="{ item }">
                           <v-icon dense @click="submit({task:'reset_pass',id:item.id})" class="BtnHover" title="Resetear contraseña del usuario" color="green"> mdi-lock-reset </v-icon>
                           <v-icon dense @click="submit({task:'get_img',id:item.id, img:item.img, user: item.name})" class="BtnHover" :color="item.img.id == 0 ? 'red': 'green'"> mdi-camera </v-icon>
                        </template>

                        <template v-slot:item.status="{ item }">
                           <v-switch v-model="item.status" @change="submit({task:'status_item', id:item.id, value: $event})" color="success" dense></v-switch>
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
                           <v-col cols="12" md="12">
                              <v-text-field v-model="forms.name" counter maxlength="150" :rules="rules.name" type="text" label="NOMBRE (S):*" dense small-chips></v-text-field>
                           </v-col>
                           <v-col cols="12" md="12">
                              <v-text-field v-model="forms.email" counter maxlength="50" :rules="rules.email" type="text" label="EMAIL" dense small-chips></v-text-field>
                           </v-col>
                        </v-row>
                     </v-form>
                  </v-card-text>
                  <v-divider></v-divider>
                  <v-card-actions>
                     <v-spacer></v-spacer>
                     <v-btn @click="reset({task:'closed_item'})" elevation="5" color="error"> Cancelar </v-btn>
                     <v-btn @click="submit({task:'send_item'})" elevation="5" color="primary"> Guardar </v-btn>
                  </v-card-actions>
               </v-card>
            </v-dialog>
            
            <v-dialog v-model="dialog_image.actived" scrollable max-width="500px" persistent>
               <v-card>
                  <v-toolbar color="#9b162e" dark class="text-h5">
                     {{dialog_image.title}}
                  </v-toolbar>
                  <v-card-text style="max-height: 700px;">
                     <br>
                     <v-form ref="form_img">
                        <v-row>
                           <v-col cols="12" md="12" class="pa-1">
                              <v-file-input :disabled="dialog_image.txt_disabled" v-model="forms.txt_img" :rules="rules.txt_img" @change="changeFiles($event)" 
                                 accept="image/png, image/jpg, image/jpeg, image/bmp, image/tif, image/psd" prepend-icon="mdi-camera" label="Foto" maxlength="20"></v-file-input>
                           </v-col> 
                        </v-row>
                        <v-row class="pa-1" v-if="forms.img.file">
                           <v-col cols="12" md="12" class="pa-1 row-center">
                              <v-card elevation="15">
                                 <v-img :src="forms.img.url" :style = "forms.img.style" class="grey darken-4" contain height="400" max-width="490" >
                                    <template v-slot:placeholder>
                                       <v-row class="fill-height ma-0" align="center" justify="center" >
                                          <v-progress-circular indeterminate color="grey lighten-5" ></v-progress-circular>
                                       </v-row>
                                    </template>
                                 </v-img>
                              </v-card>
                           </v-col>
                        </v-row>
                     </v-form>
                  </v-card-text>
                  <v-divider></v-divider>
                  <v-card-actions>
                     <v-spacer></v-spacer>
                     <v-btn v-if ="dialog_image.btn_save" @click="submit({task:'send_img'})" class="imgHover" elevation="5" color="green" fab small> 
                        <v-icon dark> mdi-check-bold </v-icon> 
                     </v-btn>
                     <v-btn v-if ="dialog_image.btn_delete" @click="submit({task:'delete_img'})" class="imgHover" elevation="5" color="error" fab small> 
                        <v-icon dark> mdi-delete </v-icon> 
                     </v-btn>
                     <v-btn @click="reset({task:'closed_img'})" class="imgHover" elevation="5" color="error" fab small> 
                        <v-icon dark> mdi-close-thick </v-icon> 
                     </v-btn>
                  </v-card-actions>
               </v-card>
            </v-dialog>

         </template>

      </div>`,
   computed:{
      ...Vuex.mapState([
         'http',
         // 'id_user'
      ]),
      ...Vuex.mapState('usersMod',[
         'title',
         'dataTable',
         'dialog_item',
         'dialog_image',
         'forms',
         'rules',
      ]),
   },
   methods:{
      ...Vuex.mapActions([ 
         'loadFile',
         'uploadFile',
         'expandFile',
         'SendNotificatios'
       ]),
      ...Vuex.mapMutations('usersMod',[]),
      ...Vuex.mapActions('usersMod',[
         // 'FilterDep',
      ]),

      async changeFiles(e){
         if(e){
            await this.loadFile({type:'img_user' ,file:e});
            this.dialog_image.txt_disabled = true;           
            this.dialog_image.btn_save = true;           
            this.dialog_image.btn_delete = true;   
         }else{
            this.forms.img = {};
            this.forms.txt_img = null;
         }
      },
      //----------------------------v-data-table------------------------------------------------
      async handleCurrentItems(currentItems) {
         // console.log('Elementos visibles actualmente:', currentItems);
         const items = await currentItems.map(item => ({
            id: item.id,
            img: item.img,
         }));
         this.loadFile({type:'users' ,items});
      },
      onPagination(paginationInfo){
         // console.log('Número de página actual:', paginationInfo.page);
      },
      //----------------------------------------------------------------------------------------

      async reset(value){
         //Users --- form_item
         console.log('reset -->' ,value);
         const RESET_ = {
            'new_item': async () => {
               this.dialog_item.actived = true;
               // await  this.$store.dispatch('usersMod/CRUD_DOMS', value);
               // await setTimeout(() => { this.$refs.form_item.reset(); }, "100");
            },
            // 'edit_item': async () => {
            //    this.Dialog_item.Actived = true;
            //    const send = value.item;
            //    send.Task = value.Task;

            //    await setTimeout(() => { this.$refs.form_item.reset(); }, "100");
            //    await setTimeout(() => { this.$store.dispatch('usersMod/CRUD_DOMS', send); }, "100");
            // },
            'closed_item': async () => {
               this.$refs.form_item.reset();
               this.dialog_item.actived = false;
            },
            'closed_img': async () => {
               this.$refs.form_img.reset();
               this.dialog_image.crud = null;  
               this.dialog_image.txt_disabled = true;           
               this.dialog_image.btn_save = false;         
               this.dialog_image.btn_delete = false;
               this.dialog_image.actived = false;
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
               (this.$refs.form_item.validate()) ? setTimeout(() => { this.$store.dispatch('usersMod/CRUD_ELEMENT', e); }, "100") : alert(Message) ;
            },
            'status_item': async () => {
               this.$store.dispatch('usersMod/CRUD_ELEMENT', e);
            },
            'expand_img': async () => {
               if(e.fileName.length){
                  let send = {};
                  send.type = 'img';
                  send.src = e.url;
                  this.expandFile(send);
                  // this.$store.dispatch('expandFile', send);
               }else{
                  this.SendNotificatios('Foto del usuario no registrado');
               }
            },
            'get_img': async () => {
               this.forms.txt_img = null;
               if( e.img.id != 0 ){
                  this.dialog_image.actived = true;
                  this.dialog_image.btn_delete = true;
                  this.dialog_image.title = 'Usuario: ' + e.user;
                  this.forms.id = e.id;
                  this.forms.img = e.img;
                  this.dialog_image.txt_disabled = true;
                  this.dialog_image.crud = 'img_user';

                  // this.dialog_image.ID = value.item.Id;
               }else{
                  this.dialog_image.actived = true;
                  this.dialog_image.title = 'Usuario: ' + e.user;
                  this.dialog_image.crud = 'preview';
                  this.dialog_image.txt_disabled = false;
                  this.forms.img = {};
                  this.forms.id = e.id;
               }
            },
            'delete_img': async () => {
               if (window.confirm('¿Está seguro que desea eliminar la foto / imágen?') === false) { return; }
               
               if(this.dialog_image.crud == 'preview'){
                  this.dialog_image.txt_disabled = false;           
                  this.dialog_image.btn_save = false;           
                  this.dialog_image.btn_delete = false;
                  
                  this.forms.txt_img = null;
                  this.forms.img = {};
               }

               if(this.dialog_image.crud == 'img_user'){
                  const fileName = this.forms.img.name;
                  const img = await this.forms.img.setDelete( this.http + 'uploadfile?type=deleteFile&url=../multimedia/img/users/' + fileName);

                  if(img.status == 200){
                     await this.$store.dispatch('usersMod/CRUD_ELEMENT', e);                     
                  }
               }
            },
            'send_img': async () => {  
               const img = await this.forms.img.setUpload( this.http + 'uploadfile?type=sendFile&path=../multimedia/img/users', this.forms.id );
               if(img.hasOwnProperty('fileName')){
                  await this.$store.dispatch('usersMod/CRUD_ELEMENT', e);
               }
            },
            'reset_pass': async () => {
               this.$store.dispatch('usersMod/CRUD_ELEMENT', e);
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
   }
});

