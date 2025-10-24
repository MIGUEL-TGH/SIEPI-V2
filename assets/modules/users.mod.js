export default {
   namespaced: true,
   state: {
      title: "Usuarios",
      typeTask:'',
      dataSend:{},
      imgWildcard:{},
      dataTable: {
         search: '',
         txt_search: '',
         per_page:5,
         headers: [
            { text: 'ID', value: 'id', class:"bg-dark white--text", width: '10%', sortable: false},
            { text: 'Nombre', value: 'name', class:"bg-dark white--text", width: '40%' },
            { text: 'Email', value: 'email', class:"bg-dark white--text", align: 'left', sortable: false },
            { text: 'Foto', value: 'img', class:"bg-dark white--text", align: 'left', sortable: false },
            { text: 'Actions', value: 'actions', sortable: false, width: '10%', class:"bg-dark white--text", align: 'center'},
            { text: '', value: 'status', sortable: false, width: '5%', class:"bg-dark white--text", align: 'left'}
         ],
         items: [],
         images:[]
      },
      dialog_item:{
         actived:false,
         title:"Nuevo Usuario",
         items:{},
      },
      dialog_image: {
         actived: false,
         title: null,
         crud: null,
         txt_disabled:false,
         btn_save:false,
         btn_delete:false,
         // id: 0,
         // CRUD: "",
         // NameFile:"",
      },
      forms:{
         id:0,
         name:'',
         email:'',
         status: false,
         txt_img: null,
         img : {},
      },
      rules:{  
         name:[
            v => !!v || 'Se requiere el nombre',
            v => (v && v.length <= 150) || 'El nombre debe tener menos de 150 caracteres',
            v => !v || /^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{1,150}$/.test(v)|| 'El campo no acepta caracteres especiales',
         ],
         email: [
            v => !!v || 'Se requiere el nombre',
            v => !v || v.length <= 50|| '50 caracteres como máximo',
            v => !v || /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/.test(v)|| 'name@example.com',
         ],
         // txt_img:[v => !v || v.size < 5000000 || 'El tamaño del avatar debe ser inferior a 5 MB!'],
      },
      regex:{
         'name': /^[\w\s.,áéíóúÁÉÍÓÚñÑüÜ]{1,100}$/,  
         'email': /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/,  
      },
   },
   mutations: {},
   actions: {
      CRUD_DOMS: async function({state, dispatch}, element){
         // console.log('CRUD_DOMS -->', element);
         const TASKS = {
            'save_item': async () =>{
               state.dataTable.images.push({
                  id: element.id,
                  img: 'multimedia/img/users/sinfotos.png'
               });
               state.dataTable.items.push({
                  id: element.id,
                  name: state.forms.name,
                  email: state.forms.email,
                  img: {},
                  status: 1,
               });

               await dispatch('SendNotificatios', '¡Registro guardado correctamente!', { root: true })
               state.dialog_item.actived = false;
            },
            'update_status': async () =>{
               const indexUser = state.dataTable.items.findIndex(item => {return item.id == element.id});
               state.dataTable.items[indexUser].status = (element.status == 1) ? true : false;
               await dispatch('SendNotificatios', '¡Cambios guardados correctamente!', { root: true });
               // console.log(typeof(element.status));
            },
            'save_img': async () =>{
               const indexUser = state.dataTable.items.findIndex(item => {return item.id == element.id});
               const indexImg = state.dataTable.images.findIndex(item => {return item.id == element.id});
               
               state.forms.img.name = element.fileName;
               state.dataTable.items[indexUser].img = state.forms.img;
               state.dataTable.images[indexImg].img =  element.src;

               state.forms.id = 0; 
               state.forms.txt_img = null; 
               state.forms.img = {}; 

               state.dialog_image.actived = false;
               state.dialog_image.btn_save = false;
               state.dialog_image.btn_delete = false;

               await dispatch('SendNotificatios', '¡imágen guardado correctamente!', { root: true });
            },
            'delete_img': async () =>{
               const indexUser = state.dataTable.items.findIndex(item => {return item.id == element.id});
               const indexImg = state.dataTable.images.findIndex(item => {return item.id == element.id});
               
               state.forms.img.name = element.fileName;
               state.dataTable.items[indexUser].img = state.imgWildcard;
               state.dataTable.images[indexImg].img =  element.src;

               state.forms.id = 0; 
               state.forms.txt_img = null; 
               state.forms.img = {}; 

               state.dialog_image.actived = false;
               state.dialog_image.btn_save = false;
               state.dialog_image.btn_delete = false;

               await dispatch('SendNotificatios', '¡imágen guardado correctamente!', { root: true });
            },
            'password_reset': async () =>{
               const findUser = state.dataTable.items.find(item => {return item.id == element.id});
               await dispatch('SendNotificatios', `¡contraseña del usuario: "${findUser.name}" reseteado correctamente!`, { root: true });
            },
            //-------------------------------------------------------------------------------------------------------------
            // '': async () =>{},
         }
         TASKS[element.task] ? await TASKS[element.task]() : console.log('!task not found¡');
      },
      CRUD_ELEMENT: async function({state, dispatch}, element){
      
         try {
            if(element.task == 'saveCell'){
               return
            }

            if(element.task == 'send_item'){
               if(!state.regex['name'].test(state.forms.name)){ 
                  return await dispatch('SendNotificatios', 'El nombre: no cumple con las características requeridas', { root: true })
               }

               if(!state.regex['email'].test(state.forms.email)){ 
                  return await dispatch('SendNotificatios', 'El email: no cumple con las características requeridas', { root: true })
               }
            }

         } catch (error) {
            return console.log(error);  
         }
         
         state.dataSend = {};  
         const TASKS = {
            'send_item': async () => { // new user
               state.dataSend = {
                  token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                  task: 1,
                  params: {
                     name: state.forms.name,
                     email: state.forms.email,
                  }
               };
            },
            'status_item': async () => { // change status by user
               state.dataSend = {
                  token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                  task: 2,
                  params: {
                     id: element.id,
                     status: (element.value === true) ? 1 : 0,
                  }
               };
            },
            'send_img': async () => { // save image by user
               state.dataSend = {
                  token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                  task: 3,
                  params: {
                     id: state.forms.id,
                     fileName: state.forms.img.name
                  }
               };
            },
            'delete_img': async () => { // delete image by user
               state.dataSend = {
                  token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                  task: 4,
                  params: {
                     id: state.forms.id,
                     img: null
                  }
               };
            },
            'reset_pass': async () => { // reset password
               state.dataSend = {
                  token: (window.localStorage.siepi) ? window.localStorage.siepi : '',
                  task: 6,
                  params: {
                     id: element.id
                  }
               };
            },
         };
         TASKS[element.task] ? await TASKS[element.task]() : console.log('¡Task ELEMENT not found!');   
         
         if(!state.dataSend.hasOwnProperty('task')){  return console.log('¡undefined task!');   }
         if(state.dataSend.task == 0){ return console.log('¡undefined task!');}

         // let server_res = {task: 'delete_img', id: 4};
         // dispatch('CRUD_DOMS', server_res); 
         // console.log(this.state.http + this.state.uri + '?type=crud');
         // console.log(state.dataSend);
         // return;

         try {
            await axios.post(this.state.http + this.state.uri + '?type=crud', state.dataSend)
            .then((response) => {
               console.log(response.data);
               let server_res = response.data.result;
               if(response.data.status == 200){ 
                  dispatch('CRUD_DOMS', server_res); 
               } else { alert(response.data.result); }

            }, error => { 
               console.log(error.response.data);
            }, {timeout: 5000});
         } catch (error) {
            // console.log(error);
            // alert("Error al guardar / actualizar lo datos");
         }

      },
      // getRule: async function({state}, rule){
      //    const result = state.Rules[rule] ? await state.Rules[rule] : [];
      //    return result;
      // },
      // cancelEdit: async function({state}, column){
      //    // console.log('cancelEdit -->', column);
      //    if(column === 'all'){
      //       state.editinCells = await Object.keys(state.editinCells).reduce((acc, key) => {
      //          acc[key] = null;
      //          return acc;
      //       }, {});
      //    }else{
      //       state.editinCells[column] = null;
      //    }
      //    state.Forms.txt_value = '';
      // },
      
   },
   methods:{
      
   },
   getters: {},
   computed:{
      
   }

}