export default Vue.component('materiales_didacticos_comp',{
   template://html
      `<div>
         <section>
            <div class="title-mod">
               <br>
               <h2>Materiales en lenguas Indígenas</h2>
            </div>
            <br>
            <br>
            <div style="text-align: center">
               <section class="container_section">
                  
                  <v-expansion-panels>
                     <v-expansion-panel v-for="(element, index) in panels" :key="index" @click="f_currentMultimedia()">
                        <v-expansion-panel-header><strong>{{element.title}}</strong></v-expansion-panel-header>
                        <v-expansion-panel-content>
                           <v-divider></v-divider>
                           <!--<br>
                           <div style="color:#7b7c7c!important;">
                              <h5> {{element.desc}} </h5>
                              <v-divider></v-divider>
                           </div>-->

                           <v-row align="center" justify="center">
                              
                              <v-col cols="10" v-if="element.videos.length">
                                 <div class="padding_movil"></div>                   
                                 <v-card elevation="10">
                                    <v-card-text>
                                       <div style="text-align: center;" color="grey darken-4">
                                          <span class="text-h6 font-weight-light font-weight-bold">PRONTUARIOS EN VIDEO</span>
                                       </div>
                                       <v-divider class="mt-6 mx-4"></v-divider>
                                       <video ref="videoPlayer" width="100%" :height="carouselHeight" controls></video>
                                       <div>
                                          <v-list style="background-color: transparent;" rounded align="left" dense>
                                             <v-list-item-group color="primary">
                                                <v-list-item v-for="(video, i) in element.videos" :key="i" @click="playVideo(video.src)" color="#9B162E">
                                                   <v-list-item-icon>
                                                      <v-icon>mdi-video</v-icon>
                                                   </v-list-item-icon>
                                                   <v-list-item-content style="border-bottom: 1px solid #a1a1a1;">
                                                      <v-list-item-title v-text="video.desc"></v-list-item-title>
                                                   </v-list-item-content>
                                                </v-list-item>
                                             </v-list-item-group>
                                          </v-list>
                                       </div>
                                    </v-card-text>
                                 </v-card>
                                 <!--<br>
                                 <v-divider></v-divider>-->
                              </v-col>

                              <v-col cols="10" v-if="element.audios.length">
                                 <!--<div class="padding_movil"></div>-->          
                                 <v-card elevation="10">
                                    <v-card-text>
                                       <div style="text-align: center;" color="grey darken-4">
                                          <span class="text-h6 font-weight-light font-weight-bold">PRONTUARIOS EN AUDIO</span>
                                       </div>
                                       <v-divider class="mt-6 mx-4"></v-divider>
                                       <div>
                                          <v-list style="background-color: transparent;" rounded align="left" dense>
                                             <v-list-item-group color="primary">
                                                <v-list-item v-for="(audio, i) in element.audios" :key="i" @click="playAudio(audio.src)" color="#9B162E">
                                                   <v-list-item-icon>
                                                      <v-icon>mdi-play-circle</v-icon>
                                                   </v-list-item-icon>
                                                   <v-list-item-content style="border-bottom: 1px solid #a1a1a1;">
                                                      <v-list-item-title v-text="audio.desc"></v-list-item-title>
                                                   </v-list-item-content>
                                                </v-list-item>
                                             </v-list-item-group>
                                          </v-list>
                                       </div>
                                       <v-divider class="mt-6 mx-4"></v-divider>
                                       <audio ref="audioPlayer" controls style="width:100%;"></audio>
                                    </v-card-text>
                                 </v-card>
                                 <br>
                                 <v-divider></v-divider>
                              </v-col>

                              <v-col v-if="element.images.length" v-for="(item, index) in element.images" :key="index" cols="auto" class="p-2">
                                 <v-card class="card_posters imgHover" elevation="15">
                                    <img v-if="item.type=='img'" @click="expandFile({type:item.type, src:item.src})" :src="item.src" :srcset="srcset(item.src)" sizes="(max-width: 600px) 200px, 400px" alt="image" loading="lazy"/>
                                    <img v-if="item.type=='pdf'" @click="expandFile({type:item.type, src:item.pdf})" :src="item.src" :srcset="srcset(item.src)" sizes="(max-width: 600px) 200px, 400px" alt="image" loading="lazy"/>
                                 </v-card>  
                                 <div style="padding-top:10px">
                                    <v-card style=" background-color:#8C264B; color:white">
                                       <p>{{item.desc}}</p>
                                    </v-card>
                                 </div>
                              </v-col>
                           </v-row>
                           <br>
                        </v-expansion-panel-content>
                     </v-expansion-panel>
                  </v-expansion-panels>
                  <br><br><br>
               </section>
                
            </div>

         </section>
      </div>`,
   computed:{
      ...Vuex.mapState([
         'carouselHeight'
      ]),
   },
   data(){
      return {
         currentAudio: null,
         currentVideo: null,
         panels:[]
      }
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'expandFile',
         'loadData'
      ]),
      f_currentMultimedia(){

         if (this.currentAudio && !this.currentAudio.paused) {
            this.currentAudio.pause();
            this.currentAudio.currentTime = 0;
         }

         if (this.currentVideo && !this.currentVideo.paused) {
            this.currentVideo.pause();
            this.currentVideo.currentTime = 0;
         }
      },
      async playAudio(src) {
         await this.f_currentMultimedia();

         let audioPlayer = this.$refs.audioPlayer;
         audioPlayer[0].src = src;
         audioPlayer[0].play().catch(error => {
            console.error('Error al intentar reproducir el audio:', error);
        });
        this.currentAudio = audioPlayer[0];
      },
      async playVideo(src) {
         await this.f_currentMultimedia();

         let videoPlayer = this.$refs.videoPlayer;
         videoPlayer[0].src = src;
         videoPlayer[0].play().catch(error => {
            console.error('Error al intentar reproducir el video:', error);
        });
        this.currentVideo = videoPlayer[0];
      },
      srcset(src) {
         return `${src}?w=200 200w, ${src}?w=400 400w`; 
      }
   },
   async created() {
      let data = await this.loadData( './assets/json/materiales.didacticos.json');
      data.sort((a, b) => {
         if (a.title < b.title) {
               return -1;
         }
         if (a.title > b.title) {
               return 1;
         }
         return 0;
      });
      // console.log(data);
      this.panels = data; 
   }
});