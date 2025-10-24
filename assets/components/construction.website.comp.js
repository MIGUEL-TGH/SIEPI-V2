export default Vue.component('construction_website',{
   template://html
      `<div>
         <section>
            <!--<div class="title-mod">
               <br>
               <br>
               <br>
            </div>-->
            <br>
            <div style="text-align: center">
               <!--<img src="multimedia/img/wildcard/construccion.jpg" alt="image" class="image_construction" loading="lazy">-->
               <video src="multimedia/video/module-construction.mp4" autoplay loop="" muted="" style="width: 40%;"></video>
            </div>
         </section>
      </div>`,
   computed:{
      ...Vuex.mapState([])
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([])  
   }
});