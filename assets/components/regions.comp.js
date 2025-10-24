//Componente de Regiones
export default Vue.component('regions_comp',{
   template://html 
      `<div> 
         <section>
            <div class="title-mod">
               <h2>{{Title}}</h2>
            </div>
         </section>
         
         <section>
          
               <v-card-title class="content-title">
                  <p>{{DataTable.Items.length}} registros</p>
                  <v-spacer></v-spacer>
                  <v-text-field type="text" label="Buscar:" v-model="DataTable.Search" append-icon="mdi-magnify" hide-details>
                     <!--<template v-slot:append-outer>
                        <v-btn color="primary" elevation="5" small >Nuevo</v-btn>
                     </template>-->
                  </v-text-field>
               </v-card-title>
            
               <v-form ref="form_item" @submit="onSubmit">
                  <v-data-table :headers="DataTable.Headers" :items="DataTable.Items" :search="DataTable.Search" :items-per-page="10" class="table-global elevation-5" :mobile-breakpoint="0"> 
                     
                     <template v-slot:item.numero = "{ item, index }">
                        <template v-if="editinCells.A === item.id">
                           <v-text-field dense solo ref="value" v-model="Forms.txt_value" :rules="Rules.A" @keyup.enter="submit({Task:'saveCell', column: 'A', id:item.id, value: item.numero})" @blur="submit({Task:'cancelEdit', column: 'A'})" ></v-text-field>
                        </template>
                        <template v-else>
                           <td @dblclick="reset({task:'editCell', column: 'A', id: item.id, value: item.numero })"> {{ item.numero }} </td>
                        </template>
                     </template>

                     <template v-slot:item.nombre = "{ item, index }">
                        <template v-if="editinCells.B === item.id">
                           <v-text-field dense solo ref="value" v-model="Forms.txt_value" :rules="Rules.B" @keyup.enter="submit({Task:'saveCell', column: 'B', id:item.id, value: item.nombre})" @blur="submit({Task:'cancelEdit', column: 'B'})" ></v-text-field>
                        </template>
                        <template v-else>
                           <td @dblclick="reset({task:'editCell', column: 'B', id: item.id, value: item.nombre })"> {{ item.nombre }} </td>
                        </template>
                     </template>

                     <template v-slot:item.sede = "{ item, index }">
                        <template v-if="editinCells.C === item.id">
                           <v-text-field dense solo ref="value" v-model="Forms.txt_value" :rules="Rules.C" @keyup.enter="submit({Task:'saveCell', column: 'C', id:item.id, value: item.sede})" @blur="submit({Task:'cancelEdit', column: 'C'})" ></v-text-field>
                        </template>
                        <template v-else>
                           <td @dblclick="reset({task:'editCell', column: 'C', id: item.id, value: item.sede })"> {{ item.sede }} </td>
                        </template>
                     </template>
                     <template v-slot:item.latitud = "{ item, index }">
                        <template v-if="editinCells.D === item.id">
                           <v-text-field dense solo ref="value" v-model="Forms.txt_value" :rules="Rules.D" @keyup.enter="submit({Task:'saveCell', column: 'D', id:item.id, value: item.latitud})" @blur="submit({Task:'cancelEdit', column: 'D'})" ></v-text-field>
                        </template>
                        <template v-else>
                           <td @dblclick="reset({task:'editCell', column: 'D', id: item.id, value: item.latitud })"> {{ item.latitud }} </td>
                        </template>
                     </template>

                     <template v-slot:item.longitud = "{ item, index }">
                        <template v-if="editinCells.E === item.id">
                           <v-text-field dense solo ref="value" v-model="Forms.txt_value" :rules="Rules.E" @keyup.enter="submit({Task:'saveCell', column: 'E', id:item.id, value: item.longitud})" @blur="submit({Task:'cancelEdit', column: 'E'})" ></v-text-field>
                        </template>
                        <template v-else>
                           <td @dblclick="reset({task:'editCell', column: 'E', id: item.id, value: item.longitud })"> {{ item.longitud }} </td>
                        </template>
                     </template>

                    

                  </v-data-table>
               </v-form>

         </section>
 
         <template>
         </template>
      </div>`,

   computed:{
      ...Vuex.mapState('regionsMod',[
         'Title',
         'DataTable',
         'Dialog_item',
         'Forms',
         'Rules',
         'TownHall',
         'editinCells'
      ])
   },
   methods:{
      ...Vuex.mapMutations([]),
      ...Vuex.mapActions([
         'SendNotificatios'
      ]),
      ...Vuex.mapActions('regionsMod',[
         'getDataID',
         'FilterRegion',
         'cancelEdit',
         'CRUD_DOMS',
         'CRUD_ELEMENT'
      ]),

      onSubmit(e) {
         if (!this.htmlSubmit) { e.preventDefault(); }
      },
      async reset(value){
         //Users --- form_item
         // console.log('reset -->' ,value);
         const RESET_ ={
            'edit_item': async () => {        
               this.CRUD_DOMS(value);
            },
            'closed_item': async () => {
               this.Dialog_item.Actived = false;
            },
            'editCell': async () => {
               await this.CRUD_DOMS(value);
               this.$refs.value.focus();
            },
         };
         RESET_[value.task] ? RESET_[value.task]() : console.log('¡Reset not found!');
      },

      async submit(value){
         //Users --- form_item
         // console.log('submit -->' ,value);
         let Message = "Favor de corregir los datos ingresados";

         const SUBMIT_ = {
            'saveCell': async () => {
               this.$refs.form_item.validate();
               (this.$refs.form_item.validate()) ? setTimeout(() => {this.CRUD_ELEMENT(value); }, "100") : this.SendNotificatios(Message); ;          
            },
            'cancelEdit': async () => {        
               this.$refs.form_item.validate();
               (this.$refs.form_item.validate()) ? setTimeout(() => {this.cancelEdit(value.column); }, "100") : ''; ;
            },
         };
         SUBMIT_[value.Task] ? SUBMIT_[value.Task]() : console.log('¡Submit not found!');
      },

      handleKeyDown(event) {
         if (event.key === 'Escape') {        
            if(this.$refs.value){
               this.cancelEdit('all')
            }
         }
      }
   },
   mounted() {
      document.addEventListener('keydown', this.handleKeyDown);
   },
   destroyed() {
      document.removeEventListener('keydown', this.handleKeyDown);
   },
});