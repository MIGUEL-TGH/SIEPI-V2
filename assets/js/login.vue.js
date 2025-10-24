const App_Vue = new Vue({
   el: '#App',
   vuetify: new Vuetify(),
   data:{
      http:'./api/login',
      Forms:{Txt_User:'',Txt_Pass:'', Time:'00:00:00'},
      Rules:{
         Txt_Req:[ v => !!v || 'Se requiere el valor del campo', ]
      },
   },
   async created(){
      await this.startTime();
      await this.CheckLogin();
   },
   components:{},
   methods:{
      async reset(){
         this.$refs.Form_Login.reset();
      },
      async submit(value){
         let Alert = "Favor de llenar todos campos";
         if(value.Task == "Login"){
            this.$refs.Form_Login.validate();
            if(!this.$refs.Form_Login.validate()){ return alert(Alert); }
            this.Send_Data(value.Task);
         }
      },
      onSubmit(e) {
         if (!this.htmlSubmit) {
           e.preventDefault()
         }
      },
      keymonitor(e) {
         if(e.txt == "user" && e.event.key == "Enter"){
            return this.$refs.pass.focus();
         }
         if(e.txt == "pass" && e.event.key == "Enter"){
            this.submit({Task:'Login'});
            this.$refs.user.focus();
         }
      },
      async Send_Data(value){ //✔✔
         try {
            // console.log({email: this.Forms.Txt_User, password: this.Forms.Txt_Pass, time: this.Forms.Time});
            // return;
            await axios.post(this.http + '?type=init',{email: this.Forms.Txt_User, password: this.Forms.Txt_Pass, time: this.Forms.Time})
            .then((response) => {
               if(response.data.status == 200){ 
                  // console.log(response.data.result.token);
                  window.localStorage.siepi = response.data.result.token;
                  window.location.href = response.data.result.page;
               }
            }, error =>{ 
               alert(error.response.data.result.replace("Error --> ", "")); 
            });    
         } catch (error) {
            console.log(error);
         }
      },
      async CheckLogin(){
         // window.localStorage.clear();
         try {
            if(window.localStorage.siepi){
               // console.log(this.http + '?type=validate', {token: window.localStorage.siepi});
               // return
               await axios.post(this.http + '?type=validate', {token: window.localStorage.siepi})
               .then((response) => {
                  // console.log(response.data);
                  if(response.data.status == 200){  
                     window.location.href = response.data.result.page;
                  }
               }, error =>{ 
                  if(error.response.data.status == 303 || error.response.data.status == 400){
                     window.localStorage.clear();
                  } 
               });      
            }else{
               window.localStorage.clear();
            }
         } catch (error) {
            console.log(error);
         }
      },
      async startTime(){
         let today = new Date();
         let hr = today.getHours();
         let min = today.getMinutes();
         let sec = today.getSeconds();
         this.Forms.Time = hr.toString().padStart(2, '0') + ':' + min.toString().padStart(2, '0') + ':' + sec.toString().padStart(2, '0');
         setTimeout(() => {   this.startTime(); }, "1000");
      },
   },
   computed:{
      
   }

});
