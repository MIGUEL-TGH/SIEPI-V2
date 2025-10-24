export default Vue.component('init_comp',{
   template://html
      `<div>
         <section>
            <div class="title-mod">
               <br>
               <h2>BIENVENIDO</h2>
            </div>
            <br>
            <div style="text-align: center">
               <video src="multimedia/video/videoinicio.mp4" autoplay loop="" muted="" style="width: 70%;"></video>
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