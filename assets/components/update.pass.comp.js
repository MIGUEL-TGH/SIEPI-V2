export default Vue.component('update_pass_comp',{
   template://html
      `<div>
         <section>
            <div>
               <v-row class="container-login">
                  <v-col cols="12"> 
                     <v-card class="mx-auto justify-center" max-width="500" elevation="15">
                        <v-card-text align="center" justify="center" style=" color:white!important; background-color:#9B162E !important; ">   
                              <label style="font-size: 25px;">{{title}}</label>
                        </v-card-text>
                        <v-card-text style=" background-color:#C1B896!important">
                         
                           <v-form ref="form_item" @submit.prevent="onSubmit">
                              <v-text-field v-model="forms.currentPassword" :rules="rules.currentPassword" type="password" label="Contraseña Actual:*" filled dense></v-text-field>
                              <v-text-field v-model="forms.newPassword" :rules="rules.newPassword" type="password" label="Contraseña Nueva:*" filled dense ></v-text-field>
                              <v-text-field v-model="forms.confirmPassword" :rules="rules.confirmPassword" type="password" label="Confirmar Contraseña Nueva:*" filled dense></v-text-field>
                           </v-form>
                           <v-divider></v-divider>
                           <v-row>
                              <v-col cols="12" align="center" justify="center">
                                 <v-btn  color="#646562" small class="ma-2 white--text" @click="submit({task:'update_pass'})">
                                    Actualizar 
                                    <v-icon right dark small> mdi-lock </v-icon>
                                 </v-btn>
                              </v-col>
                           </v-row>

                        </v-card-text>
                     </v-card>
                     <br><br><br>
                  </v-col>
               </v-row>
            </div>
         </section>
      </div>`,
   computed:{
      ...Vuex.mapState('updatePassMod',[
         'title'
      ])
   },
   data() {
      return {
         forms: {
            currentPassword: '',
            newPassword: '',
            confirmPassword: ''
         },
         rules: {
            currentPassword: [
               v => !!v || 'Este campo no puede estar vacío',
               v => !/[`‘'”]/.test(v) || 'Caracteres no permitidos'
            ],
            newPassword: [
               v => !!v || 'Este campo no puede estar vacío',
               v => this.forms.currentPassword != v || ' La nueva contraseña no puede ser igual que la actual',
               v => !/[`‘'”]/.test(v) || 'Caracteres no permitidos'
            ],
            confirmPassword: [
               v => !!v || 'Este campo no puede estar vacío',
               v => this.forms.newPassword === v || 'Las contraseñas no coinciden',
               v => !/[`‘'”]/.test(v) || 'Caracteres no permitidos'
            ]
         }
      };
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([]),

      onSubmit(e) {
         if (!this.htmlSubmit) { e.preventDefault(); }
      },
      async reset(){
         await setTimeout(() => { this.$refs.form_item.reset(); }, "100");
      },
      async submit(e){
         console.log('submit -->', e);
         const Message = "Favor de llenar los campos obigatorios ó corregir los campos que están en rojo";
         const SUBMIT_ = {
            'update_pass': async () => {
               this.$refs.form_item.validate();
               (this.$refs.form_item.validate()) ? setTimeout(() => { 
                  let send = {
                     task: e.task,
                     params: this.forms
                  }
                  this.$store.dispatch('updatePassMod/CRUD_ELEMENT', send); 
               }, "100") : alert(Message) ;
            }
            
         };
         SUBMIT_[e.task] ? SUBMIT_[e.task]() : console.log('¡Submit not found!');
      },
   },
   async created() {
      this.reset(); 
   },
});