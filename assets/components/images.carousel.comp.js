export default Vue.component('images_carousel_comp',{
   template://html
      `<div>
         <template>

               <v-dialog v-model="dialog_images" :max-width="img_contain.width">
                  <v-card style="background-color:dimgrey">
                     <div v-if="imagesCarousel.images.length">
                        <v-carousel v-if="imagesCarousel.images.length" v-model="imagesCarousel.index" @click:carousel="toggleDialog" 
                        hide-delimiter-background :height="img_contain.height">
                           <v-carousel-item contain v-for="(item,i) in imagesCarousel.images" :key="i">
                              <v-card class="images_carousel" elevation="15">
                                    <img :src="item.src" :alt="i" :srcset="srcset(item.src)" sizes="(max-width: 600px) 200px, 400px" @load="onImageLoad" 
                                    @error="onImageError" alt="image" loading="lazy">
                                    <div v-if="loading" class="loader"></div>
                              </v-card>
                           </v-carousel-item>
                        </v-carousel>
                     </div>
                  </v-card>
               </v-dialog>

         </template>
      </div>`,
   computed:{
      ...Vuex.mapState([
         'imagesCarousel',
         'img_contain'
      ]),
      dialog_images: {
         get() {
            return this.$store.state.dialog_images;
         },
         set(value) {
            this.$store.commit('SET_DIALOG_IMAGES', value);
         }
      },

   },
   data () {
      return {
         loading: true,
      }
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
      ]),
      nextImage() {
         if (this.imagesCarousel.index < this.imagesCarousel.images.length - 1) {
           this.imagesCarousel.index++;
         }else{
           this.imagesCarousel.index = 0;
         }
      },
      prevImage() {
         // console.log('prevImage()');
         if (this.imagesCarousel.index > 0) {
            this.imagesCarousel.index--;
         }else{
           this.imagesCarousel.index = this.imagesCarousel.images.length - 1;
         }
      },
      toggleDialog() {
         this.dialog_images = false;
      },
      handleKeyDown(event) {
         if (event.key === 'ArrowRight') {
            this.nextImage();
         } else if (event.key === 'ArrowLeft') {
            this.prevImage();
         }
      },

      srcset(src) {
         return `${src}?w=200 200w, ${src}?w=400 400w`; 
      },

      onImageLoad() {
         this.loading = false;
      },
      onImageError() {
      this.loading = false;
      },

   },
   mounted() {},
   watch: {
      dialog_images(value) {
        if (value) {
            document.addEventListener('keydown', this.handleKeyDown);
        } else {
            document.removeEventListener('keydown', this.handleKeyDown);
        }
      }
   },
});