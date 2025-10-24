export default Vue.component('books_comp',{
   template://html
      `<div>
         <section>
            <div class="title-mod">
               <br>
               <h2>LIBROS</h2>
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
                              <!--<p class="card_postal_title">{{item.title}}</p>-->
                              <p class="card_postal_desc"> {{item.desc}} </p>
                              <br><br>
                              <div class="card_postal_btn">
                                 <v-btn @click="expandFile({type:'open_window', src:item.pdf})" elevation="5" color="#66666B" class="ma-0 white--text" small> ver libro</v-btn>
                              </div>
                           </div>
                        </v-card>  
                     </v-col>
                  </v-row>
               </section>
               <br><br>
               <v-pagination v-model="currentPage" :length="pageCount" @input="updateUrl"></v-pagination>
            </div>
            <br>
         </section>
      </div>`,
   data() {
      return {
         itemsPerPage: 8,
         currentPage: 1,
         books: []
      };
   },
   computed:{
      ...Vuex.mapState([]),
      paginatedImages() {
         const start = (this.currentPage - 1) * this.itemsPerPage;
         return this.books.slice(start, start + this.itemsPerPage);
      },
      pageCount() {
         return Math.ceil(this.books.length / this.itemsPerPage);
      },
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'expandFile',
         'loadData'
      ]),
      updateUrl(page){
         this.currentPage = page;
         const url = new URL(window.location);
         url.searchParams.set('page', page);
         window.history.pushState({}, '', url);
      },
   },
   async created() {
      this.books = await this.loadData( './assets/json/books.json');
      await this.books.sort((a, b) => {
         if (a.title < b.title) {
               return -1;
         }
         if (a.title > b.title) {
               return 1;
         }
         return 0;
      });

      const urlParams = new URLSearchParams(window.location.search);
      const page = parseInt(urlParams.get('page')) || 1;
      this.currentPage = page;
    },
});