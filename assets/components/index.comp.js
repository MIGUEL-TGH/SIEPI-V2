export default Vue.component('index_comp',{
   template://html
      `<div style="background: linear-gradient(#c1b896, white);">     
         <br> <br>
         <section class="container_section">
            <div align="center" justify="center">
               <v-card  max-width="1300" max-height="800" elevation="10" style="border-radius: 15px !important;">
                  <v-row>
                     <v-col cols="12" sm="8">
                        <div class="title-mod">
                           <h2> ¿Qué es SIEPI? </h2>
                        </div>
                        <div>
                           <v-card-text style="padding:1.5rem;">
                              <h6 class="dialog_item_content">
                                 El Sistema de Información y Estadística sobre los Pueblos y Comunidades Indígenas del Instituto Poblano de los Pueblos Indígenas, reúne 128 indicadores de las temáticas de economía, migración, infraestructura, gobernabilidad y gobernanza, medio ambiente, salud, cultura, justicia y seguridad, tecnología, lengua y educación de fuentes institucionales de los 76 municipios, los cuales 58 son municipios indígenas y 18 son municipios con presencia indígena; para la clasificación de los municipios, se utilizaron los criterios de la CDI ahora INPI y el censo de población 2020 de INEGI.
                              </h6>
                              <br> <br> <br>
                              <v-btn @click="setUrl(2)" elevation="5" color="#66666B" class="ma-0 white--text" small> leer más </v-btn>
                           </v-card-text>
                        </div>
                     </v-col>
                     <v-col cols="12" sm="4">
                        <div style="padding:1.5rem;">
                           <v-img :src="img_siepi" :srcset="srcset(img_siepi)" sizes="(max-width: 600px) 200px, 400px" class="imgHover" contain height="200" max-width="500">
                              <template v-slot:placeholder>
                                 <v-row class="fill-height ma-0" align="center" justify="center" >
                                    <v-progress-circular indeterminate color="grey lighten-5" ></v-progress-circular>
                                 </v-row>
                              </template>
                           </v-img>
                           <br>
                           <v-btn @click="expandFile({type:'open_window', src:'./map.html'})" elevation="5" color="#66666B" class="ma-0 white--text" small> ir a mapa </v-btn>
                        </div>
                     </v-col>
                  </v-row>
               </v-card>
            </div>
            <br>
            <br>
         </section>
         <section class="container_section">
            <br>
            <div class="title-mod">
               <h2> Infografías </h2>
               <v-divider></v-divider>
            </div>
            <br>
            <v-row align="center" justify="center">
               <v-col v-for="(item, i) in postcards" :key="i" cols="auto" class="p-2">
                  <v-card class="card_postal" elevation="15">
                     <img :src="item.img" :srcset="srcset(item.img)" sizes="(max-width: 600px) 200px, 400px" alt="image" class="" loading="lazy">
                     <div class="card_postal_content">
                        <p class="card_postal_title">{{item.title}}</p>
                        <p class="card_postal_desc">
                           {{item.description}}
                        </p>
                        <div class="card_postal_btn">
                           <v-btn @click="expandFile({type:'img', src:item.img})" elevation="5" color="#66666B" class="ma-0 white--text" small> ver postal</v-btn>
                        </div>
                     </div>
                  </v-card>  
               </v-col> 
            </v-row>
            <br>
            <v-btn block elevation="10" @click="setUrl(3)">ver todas las Infografías</v-btn>
         </section>
         
         <br><br><br>
         <v-container>
            <section>
               <div class="title-mod">
                  <h2> Proyectos del IPPI </h2>
                  <v-divider></v-divider>
               </div>
               <v-progress-linear v-if="!Slides.length" indeterminate color="#9B162E" class="mb-0" ></v-progress-linear>
                  <div class="card__container swiper">
                     <div class="card__content">
                        <div class="swiper-wrapper">
                           
                           <div class="card__article swiper-slide" v-for="(item, i) in Slides">
                              <div class="card__image">
                                 <div class="image-container">
                                    <img v-if="item.img" :src="item.img" :key="i" :srcset="srcset(item.img)" sizes="(max-width: 600px) 200px, 400px"
                                     alt="image" class="card__img" loading="lazy" >
                                    <div class="card__shadow"></div>
                                 </div>
                              </div>
                              <div class="card__data">
                                 <h4 class="card__title"> <strong> {{item.title}}</strong>  </h4>
                                 <h6 class="card__description title_panel"> {{ truncateText(item.summary, 125 ) }} </h6>
                                 <v-btn @click="setDialog({type:'open_by_btn', index:i + 1, item: item})" elevation="5" color="#66666B"  class="ma-0 white--text"> Leer más</v-btn>
                              </div>
                           </div> 
                        </div>
                     </div>

                     <div class="swiper-button-next">
                        <i class="ri-arrow-right-s-line"></i>
                     </div>
                     <div class="swiper-button-prev">
                        <i class="ri-arrow-left-s-line"></i>
                     </div>
                     <div class="swiper-pagination"></div>
                  </div>
            </section>
         </v-container>

         <template>
            <v-dialog v-model="Dialog_data.actived" max-width="1200px" scrollable persistent>
               <v-card>
                  <v-toolbar dark class="toolbar title-dialog" color="#9B162E" dark>
                     <v-spacer></v-spacer>
                     <v-btn  @click="setDialog({type:'cloced'})" color="#66666B" small fab> <v-icon>mdi-close</v-icon> </v-btn>
                  </v-toolbar>
                  <v-card-text class="dialog_container">
                     <div class="dialog_content">
                        <h2 class="dialog_title"> {{Dialog_data.items.title}} </h2>
                        <v-divider ></v-divider> 
                        <v-row>
                           <v-col cols="12" md="8"> 
                              <h6 class="dialog_summary"> {{Dialog_data.items.summary}} </h6>
                              <v-divider ></v-divider>      
                              <h6 v-html="formattedContent" class="dialog_item_content"></h6>

                              <div v-if="Dialog_data.items.link">
                                 <br>
                                 <v-btn @click="expandFile({type: Dialog_data.items.link.type, src:Dialog_data.items.link.src})" block elevation="5" color="#66666B" class="ma-0 white--text"> {{Dialog_data.items.link.desc}} </v-btn>
                              </div>

                              <template v-if="Dialog_data.items.table">
                                 <strong> {{Dialog_data.items.table.title}} </strong>
                                 <v-divider></v-divider>
                                 <v-card-title class="content-title">
                                   <p>{{Dialog_data.items.table.items.length}} {{Dialog_data.items.table.desc}}</p>
                                    <v-spacer></v-spacer>
                                    <v-text-field type="text" label="Buscar:" v-model="Dialog_data.items.table.search" append-icon="mdi-magnify" hide-details>
                                    </v-text-field>
                                 </v-card-title>
                                 <v-data-table :headers="Dialog_data.items.table.headers" :items="Dialog_data.items.table.items" :search="Dialog_data.items.table.search" :items-per-page="10" class="table-map elevation-2" dense :mobile-breakpoint="0"></v-data-table>
                              </template>

                           </v-col>
                           <v-col cols="12" md="4">
                              <div v-if="Dialog_data.items.img">
                                 <strong> MULTIMEDIA </strong>
                                 <v-divider ></v-divider>

                                 <div class="imgHover" @click="expandFile({type:'img', src:Dialog_data.items.img})">
                                    <div class="image-container" style="border-radius: 10px!important;">
                                       <img v-if="Dialog_data.items.img" :src="Dialog_data.items.img" :srcset="srcset(Dialog_data.items.img)" sizes="(max-width: 600px) 200px, 400px" 
                                       @load="onImageLoad" @error="onImageError" alt="image" loading="lazy"/>
                                       <div v-if="loading" class="loader"></div>
                                    </div>
                                 </div>

                                 <v-divider></v-divider>
                              </div>
                  
                              <v-row v-if="paginatedImages.length">
                                 <v-col v-for="(item, index) in paginatedImages" :key="index" class="d-flex child-flex" cols="4" >
                                    <!--<div class="image-container imgHover" style="height: 100px; border-radius: 5px!important;" @click="expandFile({type:'img', src:item.src})">
                                       <img :key="i" :src="item.src" :srcset="srcset(item.img)" sizes="(max-width: 600px) 200px, 400px"
                                       @load="onImageLoad" @error="onImageError" alt="image" loading="lazy" style="object-fit: cover!important"/>
                                       <div v-if="loading" class="loader"></div>
                                    </div>-->
                                    <div class="image-container imgHover" style="height: 100px; border-radius: 5px!important;" @click="openImages({index, paginatedImages})">
                                       <img :key="index" :src="item.src" :srcset="srcset(item.img)" sizes="(max-width: 600px) 200px, 400px"
                                       @load="onImageLoad" @error="onImageError" alt="image" loading="lazy" style="object-fit: cover!important"/>
                                       <div v-if="loading" class="loader"></div>
                                    </div>
                                 </v-col>
                                 <v-col cols="12">
                                    <v-divider ></v-divider>
                                    <!--<v-pagination v-model="currentPage" :length="pageCount" @input="updateUrl"></v-pagination>-->
                                    <v-pagination v-model="Dialog_data.currentPage" :length="pageCount" @input="updateUrl"></v-pagination>
                                 </v-col>
                              </v-row>
                              
                              <div v-if="Dialog_data.items.pdfs.length">
                                 <v-divider ></v-divider>
                                 <v-card elevation="10">
                                    <v-card-text>
                                       <div style="text-align: center;" color="grey darken-4">
                                          <span class="text-h6 font-weight-light font-weight-bold">PDF´S</span>
                                       </div>
                                       <v-divider class="mt-6 mx-4"></v-divider>
                                       <div>
                                          <v-list style="background-color: transparent;" rounded align="left" dense>
                                             <v-list-item-group color="primary">
                                                <v-list-item v-for="(pdf, i) in Dialog_data.items.pdfs" :key="i" color="green" @click="expandFile({type:'open_window', src:pdf.src})" >
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
                              </div>
                           </v-col>  
                        </v-row>
                     </div>
                  </v-card-text>
               </v-card>
            </v-dialog>

         </template>

      </div>`,
   computed:{
      ...Vuex.mapState([
         'urlParams',
         'img_siepi',
         'windowWidth',
         'Slides',
         'images',
         'video',
         'Slides',
         'Dialog_data',
         'Carousel'
      ]),
      formattedContent(){
         return this.Dialog_data.items.content.replace(/\n\n/g, '<br> <br>');
      },
      paginatedImages() {
         const start = (this.Dialog_data.currentPage - 1) * this.itemsPerPage;
         // console.log(this.Dialog_data.items.galery_imges);
         return this.Dialog_data.items.galery_img.slice(start, start + this.itemsPerPage);
      },
      pageCount() {
         return Math.ceil(this.Dialog_data.items.galery_img.length / this.itemsPerPage);
      }
   },
   data(){
      return { 
         loading: true,
         itemsPerPage: 6,
         postcards:[]
         // currentPage: 1,
      }
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'setUrl',
         'setDialog',
         'expandFile',
         'openImagesCarousel',
         'getSliders',
         'loadData'
      ]),
      srcset(src) {
         return `${src}?w=200 200w, ${src}?w=400 400w`; 
      }, 
      truncateText(text, maxLength){
         if (text.length > maxLength) {
            return text.substring(0, maxLength) + '...';
         }
         return text;
      },
      
      onImageLoad() {
         this.loading = false;
      },
      onImageError() {
         this.loading = false;
      },
      updateUrl(page){
         // this.currentPage = page;
         // const url = new URL(window.location);
         // url.searchParams.set('page', page);
         // window.history.pushState({}, '', url);
      },

      async openImages(element){
         const { index, paginatedImages } = element;
         const images = await paginatedImages.map(item => ({
               src:item.img
         }));
         this.openImagesCarousel({index, paginatedImages: images});
      },
   },
   mounted() {
      new Swiper('.card__content', {
         loop: true,
         spaceBetween: 32,
         grabCursor: true,

         pagination: {
            el: ".swiper-pagination",
            clickable: true,
            dynamicBullets: true,
         },

         navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
         },

         breakpoints:{
            600: {
               slidesPerView: 2,
            },
            968: {
               slidesPerView: 3,
            },
         }
      });
   },
   async created(){ 
      await this.getSliders();
      const post = await this.loadData('./assets/json/postcards.json');
      const shuffled = await [...post].sort(() => 0.5 - Math.random());
      this.postcards = shuffled.slice(0, 4);

      if(this.urlParams.get('project')){
         const project = this.urlParams.get('project');
         const find = await this.Slides.find(element => {return element.param == project});

         if(find){
            await this.setDialog({type:'open_by_param',item:find});
         }
      }
   },
});