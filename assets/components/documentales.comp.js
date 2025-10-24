export default Vue.component('documentales_comp',{
   template://html
      `<div>
         <section>
            <div class="title-mod">
               <br>
               <h2>Documentales</h2>
               <v-divider class="mt-6 mx-4"></v-divider>
            </div>
            <br>
            <div>
               <section class="container_section">
                  <v-row align="center" justify="center">
                     <v-col v-for="(item, index) in paginatedImages" :key="index" cols="auto" class="p-2">
                        <v-card class="card_postal" elevation="15">
                           <img :src="item.img" alt="image" class="" loading="lazy">
                           <div class="card_postal_content">
                              <!--<br><br>   
                              <p class="card_postal_title">{{item.title}}</p>
                              <br><br><br><br>-->           
                              <p class="card_postal_desc">
                                 {{ truncateText(item.desc, 350 ) }}
                              </p>
                              <br><br><br>
                              <div class="card_postal_btn">
                                 <v-btn @click="open_dialog(item)" elevation="5" color="#66666B" class="ma-0 white--text" small> ver documental</v-btn>
                              </div>
                           </div>
                        </v-card>  
                     </v-col>
                  </v-row>
               </section>
               <br><br>
               <!-- Paginación -->
               <v-pagination v-model="currentPage" :length="pageCount" @input="updateUrl"></v-pagination>
            </div>
            <br>
         </section>

         
         <template>
            <v-dialog v-model="dialog_documental.actived" scrollable max-width="1200px" persistent>
               <v-card>
                  <v-toolbar dark class="toolbar title-dialog" color="#9B162E" dark>
                     <v-spacer></v-spacer>
                     <v-btn @click="pauseVideo" color="#66666B" small fab> <v-icon>mdi-close</v-icon> </v-btn>
                  </v-toolbar>
                  <v-card-text class="dialog_container">
                     <div class="dialog_content">
                        <h2 class="dialog_title"> {{dialog_documental.title}} </h2>
                        <v-divider ></v-divider> 
                        <v-row>
                           <v-col cols="12" md="12"> 
                              <h6 class="dialog_item_content"> {{dialog_documental.desc}} </h6>
                              <v-divider ></v-divider> 
                              <div v-if="dialog_documental.src">
                                    <iframe ref="videoFrame" width="100%" :height="(imgHeight + 100)" :src="dialog_documental.src" frameborder="0" allowfullscreen></iframe>
                              </div>
                           </v-col>
                            
                        </v-row>
                     </div>
                  </v-card-text>
               </v-card>
            </v-dialog>
         </template>
      </div>`,
   data() {
      return {
         itemsPerPage: 8,
         currentPage: 1,
         dialog_documental: { actived: false, title: "", desc: null, src:null },
         items: [],
      };
   },
   computed:{
      ...Vuex.mapState([
         'imgHeight'
      ]),
      paginatedImages() {
         const start = (this.currentPage - 1) * this.itemsPerPage;
         return this.items.slice(start, start + this.itemsPerPage);
      },
      pageCount() {
      return Math.ceil(this.items.length / this.itemsPerPage);
      },
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'loadData'
      ]),

      truncateText(text, maxLength){
         if (text.length > maxLength) {
            return text.substring(0, maxLength) + '...';
         }
         return text;
      },

      updateUrl(page){
         this.currentPage = page;
         const url = new URL(window.location);
         url.searchParams.set('page', page);
         window.history.pushState({}, '', url);
      },
      srcset(src) {
         return `${src}?w=200 200w, ${src}?w=400 400w`; 
      },
      open_dialog(item) {
         this.dialog_documental.actived = true;
         this.dialog_documental.title = item.title;
         this.dialog_documental.desc = item.desc;
         this.dialog_documental.src = item.src;
      },
      pauseVideo() {
         if (this.$refs.videoFrame) {
            const src = this.$refs.videoFrame.src;
            this.$refs.videoFrame.src = src;
         }
         this.dialog_documental.actived = false;
      },
   },
   async created() {
      this.items = await this.loadData( './assets/json/documentales.json');
      await this.items.sort((a, b) => parseInt(b.date) - parseInt(a.date));

      const urlParams = new URLSearchParams(window.location.search);
      const page = parseInt(urlParams.get('page')) || 1;
      this.currentPage = page;
   },
});