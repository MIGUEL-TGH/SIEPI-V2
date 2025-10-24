export default Vue.component('index_comp',{
   template://html
      `<div>
         <section>
            <!--height="auto"-->
            <!--<v-carousel cycle height="400" reverse-transition="fade-transition" transition="fade-transition" class="grey darken-4">-->
            <v-carousel cycle :height="carouselHeight" reverse-transition="fade-transition" transition="fade-transition" class="grey darken-4">
               <v-carousel-item contain v-for="(item,i) in carouselItems" :key="i" :src="item.img" ></v-carousel-item>
            </v-carousel>
            <br>
            <br>
            <br>
            <br>
            {{carouselHeight}}

            <br>
            <br>
            <br>
            {{monitor}}
         </section> 
      </div>`,
   computed:{
      ...Vuex.mapState([
         // 'Carousel',
         'carouselItems',
         'carouselHeight',
         'monitor',

      ]),

      // carouselItems() {
         // return this.carouselItems;
         // return this.$store.state.carouselItems;
         // return store.state.Carousel;
      // }

   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
      ]),
   },
   mounted() {},
});