export default Vue.component('consejo_estatal_comp',{
   template://html
      `<div>
         <div style="background: #9B162E">
            <section class="container-article">  
               <br><br>
               <v-card flat elevation="15" class="card_text">
                     <h1 class="dialog_title" style="color:#302f2f"> <strong>Conformación del Consejo Estatal de Pueblos y Comunidades Indígenas del Estado de Puebla.</strong> </h1>
                     <v-divider ></v-divider>
                     <div class="dialog_item_content" style="padding:10px">
                        <label> <strong>1.	Presentación.</strong> </label>
                        <p>Desde la perspectiva institucional de impulsar y propugnar acciones afirmativas con enfoque de Derechos de los Pueblos Indígenas y bajo el amparo de las Reglas de Operación, emitidas por el Instituto Poblano de los Pueblos Indígenas en el <strong>Programa para el Desarrollo Integral de los Pueblos Indígenas (E088) ejercicio fiscal 2023</strong>, La Dirección de Dialogo y Concertación, a través del Departamento de Consulta y Participación desarrollo un <strong>Plan de trabajo</strong>, a efecto de conformar en el corto plazo, el <strong>Consejo Estatal de Pueblos Indígenas</strong>, instancia de representación indígena, que cumple con un conjunto de acciones en las coberturas del territorio indígena Poblano y en un segundo plano, contar con una instancia de representación a nivel estatal, que permite a los pueblos y comunidades indígenas y afromexicano, participar y ser parte de la Junta de Gobierno del propio Instituto Poblano de los Pueblos Indígenas en el estado de Puebla.</p>
                        <p>En el mismo tenor y en el marco del  Reglamento interior que regula la función operativa del propio Instituto Poblano de los Pueblos Indígenas, se partió de la atribución que a la letra dice: “Promover e impulsar, en coordinación con las instancias competentes, la participación y representación política de los pueblos indígenas y afromexicano, en las diversas instancias de la Administración Pública Estatal, así mismo, realizar las acciones pertinentes a fin de “Someter a aprobación de la persona titular de la Dirección General, un proyecto de mecanismos de participación y representación, en las instancias de debate y decisión, que permitan la creación y funcionamiento del Consejo Consultivo y los Consejos Regionales de pueblos indígenas y afromexicano”. Acciones que forman parte del componente 2: Fortalecimiento del Desarrollo Integral de los Pueblos Indígenas y Afromexicano del estado de Puebla, acción 2.12 Promover las acciones en el reconocimiento, respeto y autonomía del derecho de libre determinación y fortalecimiento de las instituciones en asuntos relacionados con los Pueblos Indígenas y Afromexicano.</p>
                        <p> <strong>El objetivo general</strong> se cumplió en tiempo y forma, conformando el Consejo El Consejo Estatal de Pueblos y Comunidades Indígenas y Afromexicano del Estado de Puebla, con la participación de los diez consejos regionales conformados en proceso previo de consulta, quedando integrado con los siete pueblos indígenas asentados en territorios indígenas de Puebla, conforme al protocolo emitido por el IPPI y dando su consentimiento los 10 consejos indígenas regionales, cumpliéndose las etapas previstas: Etapa preparatoria, etapa de acuerdos previos, etapa deliberativa , etapa consultiva y de conformación de la Comisión de seguimiento y verificación de acuerdos.</p>
                        <p> <strong>Como objetivos específicos</strong>, se implementaron diferentes actividades de formación y capacitación, a efecto lograr elevar su nivel de participación como instancias de representación estatal, dotándolos de las herramientas y conocimientos en el manejo y operación del <strong>Reglamento Interior del Consejo Estatal en funciones</strong>, que permitió homogenizar, regular su vida interior y contar con los elementos necesarios y suficientes  para  el desempeño eficaz de representación indígena y afromexicana, ante las instancias de debate y decisión de los tres niveles de Gobierno y participar de manera directa en la <strong>Junta de Gobierno del IPPI</strong>.</p>
                        <br>
                        <label> <strong>2.   Las metas alcanzadas para su conformación fueron las siguientes:</strong> </label>
                        <p style="padding-left:1.5rem">
                           <ol type="A">
                              <li>Difusión de la convocatoria entre todos los integrantes indígenas y afromexicano de los 10 Consejos Regionales en funciones</li>
                              <li>Desarrollar la conformación de un Consejo Estatal de Pueblos y comunidades indígenas del Estado de Puebla </li>
                              <li>Desarrollar reuniones de información entre el Secretariado Técnico de las oficinas de representación del IPPI en el Estado con los 10 Consejos Regionales Indígenas Conformados. </li>
                              <li>Entrega de 10 invitaciones para su participación en este importante proceso regional y estatal. </li>
                              <li>Desarrollar un taller de capacitación para el Consejo Estatal, sobre el análisis y manejo de su reglamento Interior estatal que permitan la regulación en su ámbito estatal.</li>
                           </ol>
                        </p>
                        <br>
                        <label> <strong>3.   Los 7 Pueblos indígenas Representados: 4 representantes del Pueblo Náhuatl, 2 representantes del Pueblo Totonaku,1 Representante del Pueblo Ngigua, 1 Representante del Pueblo Mixteco, 1 representante del Pueblo Mazateco, 1 representante del Pueblo Ñähñu y 1 Representante del Pueblo Tepehua. </strong> </label>
                        <br>
                        <label> <strong>4.   Cobertura de Consejos Regionales indígenas y afromexicano que participan como integrantes del Consejo Estatal</strong> </label>
                        <br>
                        <p style="padding-left:1.5rem">
                           <ol type="A">
                              <li>Total de cobertura de municipios por CRIA: <strong>136</strong> </li>
                              <li>Total de comunidades Indígenas estimadas y representadas: <strong>2,900</strong></li>
                              <li>Total de Regiones de Puebla (PED): <strong>25 regiones</strong></li>
                           </ol>
                        </p>
                        <template v-if="table">
                           <v-card-title class="content-title">
                              <p>{{table.items.length}} {{table.desc}}</p>
                              <v-spacer></v-spacer>
                              <v-text-field type="text" label="Buscar:" v-model="table.search" append-icon="mdi-magnify" hide-details>
                              </v-text-field>
                           </v-card-title>
                           <v-data-table :headers="table.headers" :items="table.items" :search="table.search" :items-per-page="-1" class="table-map elevation-2" dense :mobile-breakpoint="0"></v-data-table>
                        </template>
                        <br>
                        <template v-if="table">
                           <v-divider ></v-divider>
                           <v-card elevation="10">
                              <v-card-text>
                                 <div style="text-align: center;" color="grey darken-4">
                                    <span class="text-h6 font-weight-light font-weight-bold">Documentos</span>
                                 </div>
                                 <v-divider class="mt-6 mx-4"></v-divider>
                                 <div>
                                    <v-list style="background-color: transparent;" rounded align="left" dense>
                                       <v-list-item-group color="primary">
                                          <v-list-item v-for="(pdf, i) in pdfs" :key="i" color="#9B162E" @click="expandFile({type:'open_window', src:pdf.src})" >
                                             <v-list-item-icon>
                                                <v-icon>mdi-file-pdf-box</v-icon>
                                             </v-list-item-icon>
                                             <v-list-item-content style="border-bottom: 1px solid #a1a1a1;">
                                                <v-list-item-title v-text="pdf.desc"></v-list-item-title>
                                             </v-list-item-content>
                                          </v-list-item>
                                       </v-list-item-group>
                                    </v-list>
                                 </div>
                              </v-card-text>
                           </v-card>
                        </template>

                     </div>
               </v-card>
               
               <br><br>
            </section>
         </div>

         <div style="background: #9B162E;">
            <section class="container-article">  
               <v-card flat elevation="15" class="card_text">
                     <h1 class="dialog_title" style="color:#807f7f "> <strong>GALERÍA DE FOTOS</strong> </h1>
                     <v-divider ></v-divider>
                     <div class="dialog_item_content" style="padding:10px">
                        <v-row align="center" justify="center">
            
                           <v-col v-for="(item, index) in paginatedImages" :key="index" cols="auto" class="p-2">
                              <v-card class="card_posters imgHover" elevation="15" style="width: 200px !important; height: 200px !important;">
                                 <!--<img @click="expandFile({type:item.type, src:item.src})" :src="item.src" :srcset="srcset(item.src)" sizes="(max-width: 600px) 200px, 400px" @load="onImageLoad" @error="onImageError" alt="image" loading="lazy"/>-->
                                 <img @click="openImagesCarousel({index, paginatedImages})" :src="item.src" :srcset="srcset(item.src)" sizes="(max-width: 600px) 200px, 400px" @load="onImageLoad" @error="onImageError" alt="image" loading="lazy"/>
                                 <div v-if="loading" class="loader"></div>
                              </v-card>

                              <div style="padding-top:10px; text-align: center">
                                 <v-card style=" background-color:#8C264B; color:white">
                                    <p>{{item.desc}}</p>
                                 </v-card>
                              </div>
                           </v-col>
                           <v-col cols="12">
                              <v-divider ></v-divider>
                              <v-pagination v-model="currentPage" :length="pageCount" @input="updateUrl"></v-pagination>
                           </v-col>

                        </v-row>
                     </div>
               </v-card>
               <br><br><br>
            </section>
         </div>
      </div>`,
   computed:{
      ...Vuex.mapState([
         'imgHeight',
         'carouselHeight',
         'infografias_cards',
         'infografiasCR_cards',
      ]),
      paginatedImages() {
         const start = (this.currentPage - 1) * this.itemsPerPage;
         return this.images.slice(start, start + this.itemsPerPage);
      },
      pageCount() {
         return Math.ceil(this.images.length / this.itemsPerPage);
      },
   },
   data(){
      return {
         loading: true,
         itemsPerPage: 10,
         currentPage: 1,
         // currentAudio: null,
         tabs_idioms: {
            tab: null,
            items: []
         },
         // loading: true,
         images:[
            { desc:null, src:'./multimedia/img/consejo_estatal/01.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/02.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/03.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/04.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/05.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/06.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/07.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/08.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/09.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/10.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/11.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/12.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/13.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/14.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/15.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/16.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/17.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/18.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/19.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/20.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/21.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/22.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/23.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/24.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/25.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/26.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/27.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/28.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/29.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/30.jpeg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejo_estatal/31.jpeg', type:'img', pdf:null },
         ],
         table:{
            title:"",
            desc:"registros",
            search: "",
            headers:[
               { text: "NO.", value: "num", "class":"bg-dark white--text" },
               { text: "Consejos Regionales de Pueblos y Comunidades Indígenas del Estado de Puebla", value: "consejo", "class":"bg-dark white--text" },
               { text: "Cobertura de municipios por CRIA", value: "cobertura", "class":"bg-dark white--text" },
               { text: "No. de Comunidades Indígenas estimadas y representadas", value: "comunidad", "class":"bg-dark white--text" },
               { text: "Regiones de Puebla (PED)", value: "ped", "class":"bg-dark white--text", "align": "center" }
            ],
            items:[
               {num:'01', consejo:'Huehuetla', cobertura:10, comunidad:108, ped:'4'},
               {num:'02', consejo:'Zacapoaxtla', cobertura:9, comunidad:448, ped:'5,8'},
               {num:'03', consejo:'Tehuacán', cobertura:13, comunidad:225, ped:'13'},
               {num:'04', consejo:'Sierra Negra', cobertura:6, comunidad:324, ped:'14'},
               {num:'05', consejo:'Huauchinango - Xicotepec', cobertura:18, comunidad:448, ped:'1 y 2'},
               {num:'06', consejo:'Tetela de Ocampo', cobertura:9, comunidad:259, ped:'3 y 7'},
               {num:'07', consejo:'Teziutlán', cobertura:12, comunidad:415, ped:'6'},
               {num:'08', consejo:'Tepexi de Rodríguez (Mixteca)', cobertura:16, comunidad:280, ped:'15,16,17,18'},
               {num:'09', consejo:'Puebla Metropolitano', cobertura:15, comunidad:376, ped:'15, 19,20, 21-31,32'},
               {num:'10', consejo:'Quimixtlan', cobertura:6, comunidad:17, ped:'9'}
            ]
         },
         pdfs:[
            {desc:"ACTA DE INSTALACIÓN DEL CONSEJO ESTATAL 2024", src:"./multimedia/pdf/consejo_estatal/ACTA_DE_INSTALACIÓN_DEL_CONSEJO_ESTATAL_2024.pdf"},
            {desc:"RUTA ELECCION 11 CONSEJEROS ESTATALES", src:"./multimedia/pdf/consejo_estatal/RUTA_ELECCION_11_CONSEJEROS_ESTATALES.pdf"}
         ]
      }
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'expandFile',
         "loadData",
         "openImagesCarousel"
      ]),
      srcset(src) {
         return `${src}?w=200 200w, ${src}?w=400 400w`; 
      },
      updateUrl(page){
         this.currentPage = page;
         const url = new URL(window.location);
         url.searchParams.set('page', page);
         window.history.pushState({}, '', url);
      },
      onImageLoad() {
         this.loading = false;
      },
      onImageError() {
         this.loading = false;
      },
      //---------------------------------------------------------------------------------------------------
      // openCarousel(index) {
      //   console.log(index);
         // this.currentImageIndex = index;
         // this.dialog = true;
      // },

   },
   async created() {
      const urlParams = new URLSearchParams(window.location.search);
      const page = parseInt(urlParams.get('page')) || 1;
      this.currentPage = page;
   },
});