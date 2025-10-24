export default Vue.component('footer_comp',{
   template://html
      `<div>
         <section>
         <v-footer dark padless>
         <v-card class="lighten-1 white--text text-center" width="100%">
            <!--<v-card-text>
               <v-btn v-for="icon in iconsPage" :key="icon" class="mx-4 white--text" icon >
                  <v-icon size="24px"> {{ icon }} </v-icon>
               </v-btn>
            </v-card-text>-->
            
            <!--<v-card-text class="white--text pt-0 container-article">
               El Sistema Estatal de Información y Estadísticas sobre los Pueblos Indígenas y Afromexicanas tiene como objetivo incluir un catálogo de los elementos y características fundamentales de su organización, como lo son sus instituciones políticas, jurídicas, económicas, sociales y culturales; así como sus tierras, territorios y recursos en el estado de Puebla. Para ello, se desarrollaron una serie de indicadores en colaboración con las áreas operativas del instituto; esta información identifica los municipios indígenas y afromexicanas del estado de Puebla.
            </v-card-text>-->

            <v-card-text>
               <img src="./assets/img/logos/escudo-puebla.png" alt="Escudo del Estado de Puebla">
               <h5>Gobierno del Estado de Puebla</h5>
               <p>
                  Calle 32 oriente, 3210, Xanenetla, C.P. 72290. Puebla, Pue. <br>
                  Tel: 22-22-79-96-05 <br>
                  Correo: ippi.oficialia@puebla.gob.mx<br>
               </p>
               <v-divider></v-divider>
               © 2019 — <strong>Gobierno de Puebla </strong>
            </v-card-text> 

         </v-card>
      </v-footer> 
         </section> 
      </div>`,
   computed:{
      ...Vuex.mapState([
         'iconsPage',
      ])
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([])  
   }
});