export default Vue.component('mid_comp',{
   template://html
      `<div>
         <div style="background: #9B162E">
            <section class="container-article">  
               <br><br>
               <v-card flat elevation="15" class="card_text">
                  <h1 class="dialog_title" style="color:#302f2f"> <strong>Módulos Interculturales Digitáles</strong> </h1>
                  <v-divider ></v-divider>
                  <div class="dialog_item_content" style="padding:10px">
                     <p><strong>¿Qué son los Módulos Interculturales Digitales?</strong><br>
                        Son espacios que promueven el uso, acceso y aprovechamiento de las tecnologías de la información y las comunicaciones a través del desarrollo de capacidades tecnológicas. Es bilingüe, multigeneracional y apoya la cultura de los siete pueblos indígenas de Puebla.
                     </p>
                     
                     <p><strong>Objetivo</strong><br>
                        Promover el uso, acceso y aprovechamiento de las tecnologías de la información y las comunicaciones a través del desarrollo de capacidades tecnológicas. Es bilingüe, multigeneracional y apoya la cultura de los siete pueblos indígenas de Puebla.
                     </p>
                     
                     <p><strong>Propósito</strong><br>
                        Brindar espacios que contribuyan a la conservación de las culturas indígenas y la promoción del bienestar colectivo.
                     </p>

                     <p><strong>¿Qué fortalece el proyecto?</strong><br>      
                        Se busca fortalecer lo siguiente:
                        <ul>
                           <li>Rescate y preservación de las Tradiciones.</li>
                           <li>Seguridad en la familia.</li>
                           <li>Fortalecimiento de la interculturalidad.</li>
                           <li>Fiestas y tradiciones.</li>
                           <li>Gastronomía.</li>
                           <li>Textiles (indumentaria)</li>
                           <li>Lenguas</li>
                           <li>
                              Leyendas locales <br>
                              <ul>
                                 <li>Música</li>
                                 <li>Danzas</li>
                                 <li>Poesía</li>
                              </ul>
                           </li>
                           <li>
                              Salud Intercultural. <br>
                              <ul>
                                 <li>Medicina Tradicional</li>
                                 <li>Institucional</li>
                              </ul>
                           </li>
                           <li>Servicio culturalmente pertinente</li>
                           <li>Formación de promotores líderes en tecnologías de la información</li>
                           <li>Promover la innovación tecnológica con enfoque intercultural.</li>
                           <li>Rezago Digital</li>
                           <li>Derecho Digital</li>
                           <li>Tecnología ambiental.</li>
                           <li>
                              Biblioteca Digital<br>
                              <ul>
                                 <li>Libros electrónicos</li>
                                 <li>Lecturas en PDF</li>
                                 <li>Catálogo de imágenes</li>
                                 <li>Videos</li>
                                 <li>Podcast</li>
                                 <li>Multimedia Educativa</li>
                              </ul>
                           </li>
                        </ul>
                     </p>

                     
                     <p><strong></strong><br>
                     </p>

                     
                     <p><strong></strong><br>
                     </p>

                  </div>
               </v-card>
               
               <br><br>
            </section>
         </div>

         <!--<div style="background: #9B162E">
            <section class="container-article">
               <v-card flat elevation="15" class="card_idioms">
                     <v-tabs v-model="tabs_idioms.tab" background-color="#C1B896" dark show-arrows centered>
                        <v-tab v-for="item in tabs_idioms.items" :key="item.tab" @click="f_currentAudio()">
                           <strong> {{ item.tab }} </strong>
                        </v-tab>
                        <v-tabs-slider color="white"></v-tabs-slider>
                     </v-tabs>
               
                     <v-tabs-items v-model="tabs_idioms.tab">
                        <v-tab-item v-for="(item, index) in tabs_idioms.items" :key="item.tab">
                           <v-card flat color="">
                              <v-card-text class="">
                                    <div class="container-article">
                                       <h2 class="dialog_title_2" style="color:#9B162E"> {{item.tab}} </h2>
                                       <v-divider></v-divider> <br>
                                       <v-row>
                                          <v-col cols="12" md="8" class="py-0" align="center" justify="center"> 
                                             
                                                   <v-row>
                                                      <v-col cols="12" md="12">
                                                         <v-card elevation="10">
                                                            <v-card-text>
                                                               <div style="text-align: center;" color="grey darken-4">
                                                                  <span class="text-h6 font-weight-light font-weight-bold">VIDEO PROMOCIONAL </span>
                                                               </div>
                                                               <v-divider class="mt-6 mx-4"></v-divider>
      
                                                               <div v-if="item.iframe">
                                                                  <iframe width="100%" :height="imgHeight" :src="item.iframe" frameborder="0" 
                                                                     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                                               </div>
                                                               <div v-else-if="item.video">
                                                                  <video width="100%" :height="carouselHeight" controls>
                                                                     <source :src="item.video" type="video/mp4">
                                                                  </video>
                                                               </div>
                                                            </v-card-text>
                                                         </v-card>
                                                      </v-col>

                                                      <v-col cols="12" md="12">
                                                         <v-card elevation="10">
                                                            <v-card-text>
                                                               <div style="text-align: center;" color="grey darken-4">
                                                                  <span class="text-h6 font-weight-light font-weight-bold">INFOGRAFIAS</span>
                                                               </div>
                                                               <v-divider class="mt-6 mx-4"></v-divider>
                                                               <v-row>
                                                                  <v-col cols="12" md="6">
                                                                     <v-card max-width="500" elevation="10" >
                                                                        <v-img contain height="255" max-width="500" :src="item.img_info" class="grey darken-4 imgHover" @click="expandFile({type: 'open_window', src:item.pdf_info})">
                                                                           <template v-slot:placeholder>
                                                                              <v-row class="fill-height ma-0" align="center" justify="center" >
                                                                                 <v-progress-circular indeterminate color="grey lighten-5" ></v-progress-circular>
                                                                              </v-row>
                                                                           </template>
                                                                        </v-img>
                                                                     </v-card>
                                                                  </v-col>
                                                                  <v-col cols="12" md="6">
                                                                     <v-card max-width="500" elevation="10">
                                                                        <v-img contain height="255" max-width="500" :src="item.img_sin" class="grey darken-4 imgHover" @click="expandFile({type: 'open_window', src:item.pdf_sin})">
                                                                           <template v-slot:placeholder>
                                                                              <v-row class="fill-height ma-0" align="center" justify="center" >
                                                                                 <v-progress-circular indeterminate color="grey lighten-5" ></v-progress-circular>
                                                                              </v-row>
                                                                           </template>
                                                                        </v-img>
                                                                     </v-card>
                                                                  </v-col>
                                                               </v-row>
                                                            </v-card-text>
                                                         </v-card>
                                                      
                                                      </v-col>

                                                   </v-row>
                                          </v-col>
                                          <v-col cols="12" md="4" class="py-0" align="center" justify="center">

                                             <div class="padding_movil"></div>
                                             
                                             <v-card elevation="10">
                                                <v-card-text>
                                                   <div style="text-align: center;" color="grey darken-4">
                                                      <span class="text-h6 font-weight-light font-weight-bold">SPOTS DE AUDIO</span>
                                                   </div>
                                                   <v-divider class="mt-6 mx-4"></v-divider>
                                                   <div v-if="item.audios.length">
                                                      <v-list style="background-color: transparent;" rounded align="left" dense>
                                                         <v-list-item-group color="primary">
                                                            <v-list-item v-for="(audio, i) in item.audios" :key="i" @click="playAudio({src:audio.src, ref: refAudio(index)})" color="green">
                                                               <v-list-item-icon>
                                                                  <v-icon>mdi-play-circle</v-icon>
                                                               </v-list-item-icon>
                                                               <v-list-item-content style="border-bottom: 1px solid #a1a1a1;">
                                                                  <v-list-item-title v-text="audio.name"></v-list-item-title>
                                                               </v-list-item-content>
                                                            </v-list-item>
                                                         </v-list-item-group>
                                                      </v-list>
                                                   </div>
                                                   <v-divider class="mt-6 mx-4"></v-divider>
                                                   <audio :ref="refAudio(index)" controls style="width:100%;"></audio>
                                                </v-card-text>
                                             </v-card>

                                          </v-col>  
                                       </v-row>
                                    </div>
                              </v-card-text>
                              <br><br>
                           </v-card>
                        </v-tab-item>
                     </v-tabs-items>
               </v-card>
            </section>
            <br><br>
         </div>-->

         <!--<div style="background: #9B162E;">
            <section class="container-article">  
               <v-card flat elevation="15" class="card_text">
                     <h1 class="dialog_title" style="color:#807f7f "> <strong>GALERÍA DE FOTOS</strong> </h1>
                     <v-divider ></v-divider>
                     <div class="dialog_item_content" style="padding:10px">
                        <v-row align="center" justify="center">
            
                           <v-col v-for="(item, index) in paginatedImages" :key="index" cols="auto" class="p-2">
                              <v-card class="card_posters imgHover" elevation="15" style="width: 200px !important; height: 200px !important;">
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
         </div>-->
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
         currentAudio: null,
         tabs_idioms: {
            tab: null,
            items: []
         },
         // loading: true,
         images:[
            { desc:'Teziutlán', src:'./multimedia/img/consejos_regionales/01.jpg', type:'img', pdf:null },
            { desc:'Teziutlán', src:'./multimedia/img/consejos_regionales/02.jpg', type:'img', pdf:null },
            { desc:'Casa Puebla', src:'./multimedia/img/consejos_regionales/03.jpg', type:'img', pdf:null },
            { desc:'Casa Puebla', src:'./multimedia/img/consejos_regionales/04.jpg', type:'img', pdf:null },
            { desc:'Casa Puebla', src:'./multimedia/img/consejos_regionales/05.jpg', type:'img', pdf:null },
            { desc:'Casa Puebla', src:'./multimedia/img/consejos_regionales/08.jpg', type:'img', pdf:null },
            { desc:'Tetela de Ocampo', src:'./multimedia/img/consejos_regionales/06.jpg', type:'img', pdf:null },
            { desc:'Tetela de Ocampo', src:'./multimedia/img/consejos_regionales/07.jpg', type:'img', pdf:null },
            { desc:'Tetela de Ocampo', src:'./multimedia/img/consejos_regionales/09.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/10.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/11.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/12.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/13.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/14.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/15.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/16.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/17.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/18.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/19.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/20.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/21.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/22.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/23.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/24.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/25.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/26.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/27.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/28.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/29.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/30.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/31.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/32.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/33.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/34.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/35.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/36.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/37.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/38.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/39.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/40.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/41.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/42.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/43.jpg', type:'img', pdf:null },
            { desc:null, src:'./multimedia/img/consejos_regionales/44.jpg', type:'img', pdf:null },
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
      f_currentAudio(){
         if (this.currentAudio && !this.currentAudio.paused) {
            this.currentAudio.pause();
            this.currentAudio.currentTime = 0;
         }
      },
      
      async playAudio(item) {
         if (this.currentAudio && !this.currentAudio.paused) {
            this.currentAudio.pause();
            this.currentAudio.currentTime = 0;
         }
         
         let audioPlayer = this.$refs[item.ref];
         audioPlayer[0].src = item.src;
         audioPlayer[0].play().catch(error => {
            console.error('Error al intentar reproducir el audio:', error);
        });

        this.currentAudio = audioPlayer[0];
      },
      srcset(src) {
         return `${src}?w=200 200w, ${src}?w=400 400w`; 
      },
      refAudio(index) {
         return `audioPlayer${index}`; 
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

   },
   async created() {
      this.tabs_idioms.items = await this.loadData( './assets/json/consejos.regionales.json');

      const urlParams = new URLSearchParams(window.location.search);
      const page = parseInt(urlParams.get('page')) || 1;
      this.currentPage = page;
   },
});