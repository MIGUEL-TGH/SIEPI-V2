//Componente Economía
export default Vue.component('economy_comp',{
   template://html 
      `<div> 
          <section>
             <div class="title-mod">
                <br>
                <h2>{{Title}}</h2>
             </div>
          </section>
          <section>
            <!--<v-container>-->
                <!--<v-card-title>
                   <br>
                   {{DataTable.Items.length}} Registros
                   <v-spacer></v-spacer>
                   <v-text-field type="text" label="Buscar:" v-model="DataTable.Search" append-icon="mdi-magnify" single-line hide-details>
                      <template v-slot:append-outer>
                         <v-btn color="primary" elevation="5" small @click="reset({Task:'Insert'})">Nuevo</v-btn>
                      </template>
                   </v-text-field>
                </v-card-title>-->
                <v-data-table :headers="DataTable.Headers" :items="DataTable.Items" :search="DataTable.Search" class="elevation-5" >
                   <!--<template v-slot:item.Status="{ item, index }">
                      <v-icon class="mr-1 BtnHover" color="green" @click="Get_Acc(item.Id)"> mdi-eye </v-icon>
                      <v-icon class="mr-1 BtnHover" color="green" @click="getDialog({Task:'Update', ID:item.Id})"> mdi-pencil </v-icon>
                      <v-icon class="mr-1" :color="item.Color">mdi-circle</v-icon>
                   </template>-->
                </v-data-table>
            <!--</v-container>-->
         </section>
 
         <template>
 
         </template>
      </div>`,
 
    computed:{
       ...Vuex.mapState('economyMod',[
          'Title',
          'DataTable',
         //  'Dialog_item',
         //  'Dialog_acc',
         //  'Rules',
         //  'Forms',
         //  'Items',
         //  'Programs'
       ])
    },
 
    methods:{
       ...Vuex.mapMutations([]),
       ...Vuex.mapActions('economyMod',[
         //  'CRUD', 
         //  'getDialog',
         //  'Get_Acc'    
      ]) ,
      //  async reset(value){
      //     // console.log('reset -->' ,value);
      //     //Users --- Form_User
      //     this.Forms.Task = '';
      //     if(value.Task == 'Insert'){
      //        this.Dialog_item.Actived = true;
      //        this.Forms.Task = value.Task;
      //        setTimeout(() => { this.$refs.form_item.reset(); }, "100");
      //        return;
      //     }
 
      //     if(value.Task == "Closed"){
      //        this.$refs.form_item.reset();
      //        this.Dialog_item.Actived = false;
      //     }
 
      //  },
      //  submit(value){
      //    if(value.Task == 'Save'){
      //       this.$refs.form_item.validate();
      //       if(this.$refs.form_item.validate()){
      //        setTimeout(() => { this.$store.dispatch('Mod_actividades_comp/CRUD'); }, "100");
      //       }else{
      //          alert("FAVOR DE LLENAR LOS CAMPOS OBLIGATORIOS Ó CORREGIR LOS CAMPOS QUE ESTAN EN ROJO");
      //       }
      //    }
 
      //     if(value.Task == 'Delete'){
      //        this.Forms.Task = value.Task;
      //        this.Forms.Id = value.Id;
      //        this.Forms.index = value.I;
      //        setTimeout(() => { this.$store.dispatch('Mod_actividades_comp/CRUD'); }, "100");
      //     }
      //  },
    }
 });