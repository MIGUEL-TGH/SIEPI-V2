export default Vue.component('header_comp',{
   template://html
      `<div>
         <section>
            <v-carousel cycle :height="carouselHeight" reverse-transition="fade-transition" transition="fade-transition" class="grey darken-4">
                  <v-carousel-item contain v-for="(item,i) in carousel" :key="i" :src="item.img" @click="expandFile({type: 'open_window', src:item.page})"></v-carousel-item>
            </v-carousel>
            <!-- barra de bavegacion -->
            <div class="text-center">
               <v-sheet class="mx-auto" color="#9b162e" dark>
                  <v-btn class="ma-1" color="white" plain small @click="setUrl(1)"> inicio </v-btn>
                  <v-btn class="ma-1" color="white" plain small @click="setUrl(4)"> material didácticos </v-btn>
                  <v-btn class="ma-1" color="white" plain small @click="setUrl(5)"> consejos regionales </v-btn>
                  <v-btn class="ma-1" color="white" plain small @click="setUrl(8)"> consejo estatal </v-btn>
                  <v-btn class="ma-1" color="white" plain small @click="setUrl(6)"> documentales </v-btn>
                  <v-btn class="ma-1" color="white" plain small @click="setUrl(7)"> libros </v-btn>
                  <v-btn class="ma-1" color="white" plain small @click="setUrl(10)"> MID </v-btn>
                
               </v-sheet>
            </div>
         </section>
      </div>`,
   
   computed:{
      ...Vuex.mapState([
         'carouselItems',
         'carouselHeight'
      ])
   },
   data(){
      return {
         carousel: [],
      }
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'setUrl',
         'updateWindowWidth',
         'expandFile',
         'loadData'
      ]),
      
      handleResize() {
         this.updateWindowWidth();
      }
   },
   destroyed() {
      window.removeEventListener('resize', this.handleResize);
   },

   async created() {
      window.addEventListener('resize', this.handleResize);
      this.handleResize();
      this.carousel = await this.loadData('./assets/json/carousel.json');
    },
});