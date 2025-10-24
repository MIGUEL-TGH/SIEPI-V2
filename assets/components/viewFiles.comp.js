export default Vue.component('viewfiles_comp',{
   template://html 
      `<div>
         <template>
            <!--v-model="$store.state.dialog_file.actived"  metodo cuando no se declara directamente de ...Vuex.mapState-->
            <v-dialog v-model="dialog_file.actived" max-width="600">
               <v-card>
                  <template v-if="dialog_file.type == 'img'">
                     <v-img contain height="600" max-width="600" :src='dialog_file.src' class="grey darken-4">
                        <template v-slot:placeholder>
                           <v-row class="fill-height ma-0" align="center" justify="center" >
                              <v-progress-circular indeterminate color="grey lighten-5" ></v-progress-circular>
                           </v-row>
                        </template>
                     </v-img>
                  </template>
                  <template v-if="dialog_file.type == 'pdf'">
                        <embed :src='dialog_file.src' type="application/pdf" width="100%" height="650px" />
                  </template>
               </v-card>
            </v-dialog>
         </template>
      </div>`,
   computed:{
      ...Vuex.mapState([
         'dialog_file'
      ])
    },
   methods:{
      ...Vuex.mapActions([]) ,
    
   }
});