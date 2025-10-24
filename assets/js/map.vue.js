class Charts_ {
   constructor (){
      this.id = 0;
      this.name = '';
      this.attributes = {};
   }
   async set_Pie_Doughnut(items){
      try {
         this.attributes = {
            labels: [],
            datasets: [{ backgroundColor: [], data: [] }]
         }
         for(const [index, element] of items.entries()){
            if(element){
               if(element.color){            
                  this.attributes.labels.splice(0, 0, element.desc);
                  this.attributes.datasets[0].backgroundColor.splice(0, 0, element.color);
                  this.attributes.datasets[0].data.splice(0, 0, element.data);
               }
            }
         }  
      } catch (error) {
         console.log(error);
      }
   }
   async set_Bar(items, headers){
      try {
         items.sort((a, b) => {
            if (a.desc < b.desc) return -1;
            if (a.desc > b.desc) return 1;
            return 0;
         });

         this.attributes = { labels: [], datasets: [] };
         let hasColorAttribute = headers.every(item => 'color' in item);
         if(hasColorAttribute){
            this.attributes.labels = items.map(item => item.desc);
            let hasColors = headers.filter(item => item.color !== null);

            for(const [index, element] of hasColors.entries()){
               let data_chart = items.map(item => item[element.value]);
               let data_values = data_chart.map(value => parseFloat(value.replace(/,/g, '')));
            
               this.attributes.datasets.splice(0,0,
                  { label: element.text, backgroundColor: element.color, data: data_values }
               );
            };

            this.attributes.datasets.sort((a, b) => {
               if (a.label < b.label) return -1;
               if (a.label > b.label) return 1;
               return 0;
            });

            this.attributes.labels.sort();

         }else{
            for(const [index, element] of items.entries()){
               let Data = [];
               if(typeof element.data == 'string'){ 
                  Data.push(element.data); 
                  this.attributes.labels.splice(0, 0, '');
               }
   
               this.attributes.datasets.splice(0,0,
                  { label: element.desc, backgroundColor: element.color, data: Data }
               );
            }
         }; 
      } catch (error) {
         console.log(error);
      }
   }
   async setChart(type, element){
      this.name = type;
      const CHARTS = {
         'pie': () => { this.set_Pie_Doughnut(element.items); },
         'doughnut': () => { this.set_Pie_Doughnut(element.items); },
         'bar': () => { this.set_Bar(element.items, element.headers); }
      };
      await CHARTS[type] ? CHARTS[type]() : console.log('chart not found!');
   }
}
class Tables {
   constructor (){
      this.search = '';
      this.headers = [];
      this.items = [];
      this.columns_style = [];
      this.header = false;
   }
   async setTable(table){
      this.headers = (table.headers) ? table.headers : [];
      this.items = (table.items) ? table.items : [];
      this.columns_style = (table.class) ? table.class : [];
      this.header = (table.header) ? table.header : false;
   }
}

const App_Vue = new Vue({
   el: '#App',
   vuetify: new Vuetify(),
   data:{
      http:'./api/',
      drawer: null,
      TypeTask: "",
      Indicators:[],
      TownHall: {
         uri:'',
         Tittle:'',
         Search:'',
         Id_File:0,
         Items:[],
      },
      citas_all:[],
      Citas:{
         Items:[],
         Img:null
      },
      //-------------------------------------------------------------------------------------------
      Dialog_data: {  actived: false, title: "", indicator:'', items: {}, panel:false },

      Lenguages_R:[],
      Lenguages_M:[],
      Lengua_M:[],
      typeLengua:"",

      Panel: false,
      Dialog_Alert: false,
      Dialog_Loader: true,
      Dialog_Cita: { Actived: false, Tittle: "Fuente:", },   
      Dialog_Lenguage: {  Actived: false, Tittle: "", Content: {} },
      Progress:[0,0],
   },
   async created(){ 
      await this.getIndicators();
      await this.getCitas();
      await this.Count_visits();
   },
   components:{},
   methods:{
      async getIndicators(){
         try {
            await axios.get(this.http + 'map?type=items')
            .then((response) => {
               if(response.data.status == 200){
                  // const result = response.data.result.map(item => ({
                  //    ...item,
                  //    items: [] 
                  // }));
                  // this.Indicators = result;
                  this.Indicators = response.data.result;
                  console.log(this.Indicators);
               }
            }, error => { 
               console.log(error.response.data);
            });
         } catch (error) {
            console.log(error);
         }
      },
      async getCitas(){
         try {
            await axios.get(this.http + 'fuentes_info?type=map')
            .then((response) => { 
               if(response.data.status == 200){
                  this.citas_all = response.data.result;
               }
            }, error => { 
               console.log(error.response.data);
            });
         } catch (error) {
            console.log(error);
         }
      },
      async Count_visits(){
         let dateTime = Date.now();;
         await axios.post(this.http + 'visits', {comp: 'map', dateTime})
         .then((response) => {
         }, error =>{
         }); 
      },
      setClass(column, items) {
         if (items.includes(column)) {
            return 'value-table'; 
         }else{
            return 'desc-table';
         }
      },
      async SltIndocator(element){
         view.graphics.removeAll();
         this.TownHall.Search = "";
         // this.TypeTask = "";
         this.TownHall.Items = [];
         this.TownHall.uri = element.uri;

         if(element.uri != 'lenguages'){
            const { color, uri, items } = element;
            await this.GetIndicator(color, uri, items);
         }else if(element.uri === 'lenguages'){
            const { id, title, color, uri, items, search, id_search } = element;
            // this.TypeTask = element.title;
            // this.TownHall.Title = "";
            // await this.CleanInfoMap();
            // WatchExpand.expanded = true;
            // document.getElementById('InfoMap').style.display='block'; 

            await this.GetLanguages(color, search, id_search);
         }      
      },
      
      async setCitas(uri){
         const find = this.citas_all.find(element => {return element.indicator == uri});
         if(find.hasOwnProperty('indicator')){
            this.Citas.Items = find.items;
            this.Citas.Img = find.img;
         }
      },
      async GetIndicator(color, uri, items){
         this.Dialog_Loader = true;
         let req = [], send = false;
         // this.TownHall.Items = [];       
         try {
            if(items.length == 0){
               await axios.get(this.http + uri + '?type=points')
               .then((response) => {
                  if(response.data.result){
                     send = true;
                     req = response.data.result;
                  }
               }, error =>{ return; });

            }else{
               send = true;
               req = items;
            }
            
            if(!send){  return; }
            const index = this.Indicators.findIndex(item => {return item.uri == uri});
            this.Indicators[index].items = req;
            
            await DrawGraphic(req, color);
            await this.Build_InfoMap(uri, req);
            await this.setCitas(uri);

         } catch (error) {
            console.log(error);
            return alert ('error: ¡Algo salió mal al buscar datos del indicador!');
         }
         this.Dialog_Loader = false;
      },

      async Build_InfoMap(uri, items){
         await this.CleanInfoMap();
         WatchExpand.expanded = true;
         document.getElementById('InfoMap').style.display = 'block';
         const mappings = {
            afromexicana: {
               title: 'Indicadores de los municipios indígenas con presencia Afromexicana',
               idFile: 12,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}: ${parseInt(item.TOTAL).toLocaleString()} P. afromexicanos`}}
            },
            culture: {
               title: 'Indicadores de los municipios indígenas en Cultura',
               idFile: 7,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}: ${parseInt(item.PPA).toLocaleString()} Proporción de población afromexicana` }}
            },
            economy: {
               title: 'Economía - Encuesta Intercensal 2020',
               idFile: 1,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}: ${parseInt(item.Poblacion).toLocaleString()} población` }}
            },
            migration: {
               title: 'Migración, población nacida en otra entidad',
               idFile: 2,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}: ${parseInt(item.PNOE).toLocaleString()} migrantes` }}
            },
            infrastructure: {
               title: 'Infraestructura en los municipios indígenas del estado de Puebla',
               idFile: 3,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}: ${parseInt(item.TV).toLocaleString()} viviendas` }}
            },
            governance: {
               title: 'Gobernabilidad y Gobernanza en los municipios indígenas del estado de Puebla',
               idFile: 4,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}` }}
            },
            environment: {
               title: 'Indicadores de los municipios indígenas en el medio ambiente',
               idFile: 5,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}: ${item.TMA}° media anual` }}
            },
            health: {
               title: 'Indicadores de los municipios indígenas en la salud',
               idFile: 6,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}: ${parseInt(item.Poblacion).toLocaleString()} población` }}
            },
            justice: {
               title: 'Indicadores de los municipios indígenas en Justicia y Seguridad',
               idFile: 8,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}` }}
            },
            technology: {
               title: 'Indicadores de los municipios indígenas en la tecnología',
               idFile: 9,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}` }}
            },
            lenguages: {
               idFile: 10,
               formatDesc: (item, x) => {
   
                  if( this.typeLengua == 'Mun' ){
                     return {title: 'Indicadores las lenguas por municipio', desc:`${x}.- ${item.title}, ${item.Lenguas.length} lenguas`};
                  }else if( this.typeLengua == 'Reg' ){
                     return {title: 'Indicadores las lenguas por regiones',desc:`${x}.- ${item.title}, ${item.Lenguas.length} lenguas`};
                  }else if( this.typeLengua == 'MunLengua' ){
                     return {title: 'Indicadores por lengua en municipios',desc:`${x}.- ${item.title}, ${parseInt(item.nhablantes).toLocaleString()} hablantes`};
                  }

                  return '';
               }
            },
            education: {
               title: 'Indicadores de los municipios indígenas en Educación',
               idFile: 11,
               formatDesc: (item, x) =>{ return {desc: `${x}.- ${item.title}` }}

            }
         };
     
         if (!mappings[uri]) {
             throw new Error(`Unknown URI: ${uri}`);
         }

         const { title, idFile, formatDesc } = mappings[uri];
         this.TownHall.Title = title || '';
         this.TownHall.Id_File = idFile || 0;
     
         let new_array = [];
         let x = 1;
         for (const item of items) {
            const element = formatDesc(item, x);
            if(element.hasOwnProperty('title')){
               this.TownHall.Title = element.title;
               new_array.push({ Id: item.Id, Desc_: element.desc });
            }else{
               new_array.push({ Id: item.Id, Desc_: element.desc });
            }
            x++;
         }
         this.TownHall.Items = new_array;
      },
      async CleanInfoMap(){
         document.getElementById('InfoMap').style.display='none';
      },
      async GetData_TownHall(value){        
         let result = {};

         if(this.TownHall.uri =="lenguages"){

            if(this.typeLengua == "Reg"){
               let Find = this.Lenguages_R.find(element => {return element.Id == value});
               const {Id, Lenguas, title } = Find;
               const items = Lenguas.map(item => ({
                  desc: item.nombre,
                  val: parseInt(item.total).toLocaleString('en-US') 
               }));
               let table = {
                  class:['val'],
                  header: false,
                  headers:[
                     {text:'LENGUA', value:'desc'},
                     {text:'HABLANTES', value:'val'}
                  ],
                  items
               }
               result = {
                  Id,
                  Indicator: 'Lenguas Indígenas en la Region',
                  title,
                  Table_01: table
               }

            }else if(this.typeLengua =="Mun"){
               let Find = this.Lenguages_M.find(element => {return element.Id == value});
               const {Id, Lenguas, title } = Find;
               const items = Lenguas.map(item => ({
                  desc: item.nombre,
                  val: parseInt(item.total).toLocaleString('en-US')
               }));

               let table = {
                  class:['val'],
                  header: false,
                  headers:[
                     {text:'LENGUA', value:'desc'},
                     {text:'HABLANTES', value:'val'}
                  ],
                  items
               }
               result = {
                  Id,
                  Indicator: 'Lenguas Indígenas en el Municipio',
                  title,
                  Table_01: table
               }

            }else if(this.typeLengua =="MunLengua"){
               let Find = this.Lengua_M.find(element => {return element.Id == value});
               const {Id, Lengua, title, nhablantes } = Find;
               const items=[
                  {desc: Lengua, val: parseInt(nhablantes).toLocaleString('en-US') }
               ]
               let table = {
                  class:['val'],
                  header: false,
                  headers:[
                     {text:'LENGUA', value:'desc'},
                     {text:'HABLANTES', value:'val'}
                  ],
                  items
               }
               
               result = {
                  Id,
                  Indicator: 'LENGUA',
                  title,
                  Table_01: table
               }

            }

         }else{
            await axios.get(this.http + this.TownHall.uri + '?type=findId&id=' + value)
            .then((response) => {
               if(response.data.status == 200){ result = response.data.result; }
            }, error => { 
               console.log(error.response.data);
            });

         }

         if(result.Id){ 
            try {
               this.Dialog_data = {
                  actived: true,
                  title: result.title,
                  indicator: result.Indicator,
                  panels: []
               };

               if(result.Table_01){
                  const TABLE_01 = new Tables();
                  await TABLE_01.setTable(result.Table_01); 
                  this.Dialog_data.table_01 = TABLE_01;
               }
               
               let panels = [];
               if(result.panels){
                  for(const item of result.panels) {
                     let chart_temp = {}, table = {};

                     if(item.table){
                        const TABLE = new Tables();
                        await TABLE.setTable(item.table); 
                        table = TABLE;
                     }

                     if(item.chart){
                        const CHART = new Charts_();
                        await CHART.setChart(item.chart, item.table); 
                        chart_temp = CHART;
                     }
                     
                     let panel = {
                        panel_header: item.panel_header || null,
                        label: item.label || null,
                        table,
                        label_chart: item.label_chart || null,
                        chart: chart_temp
                     };
                     panels.push(panel);
                  };
               }
               this.Dialog_data.panels = panels;
            } catch (error) { console.log(error); }
         }

         this.Panel = true;
      },

      async Create_File(Id){
         this.Dialog_Alert = true;
         await axios.post('./routes/DownloadFiles.php?Task=Update_Excel', {Id:Id, Type_Doc: this.TypeTask})
         .then((response) => {
            if(response.data.NameFile){   this.DowloadFile(response.data); }
         });
         this.Dialog_Alert = false;
      },
      DowloadFile(item){
         const Element = document.createElement('a');
         Element.href = item.Ruta;
         Element.download = item.NameFile;
         Element.click();
         Element.remove();
      },
      Files(){
         const FILES = {
            1: () => { this.DowloadFile({NameFile:'INDICADORES-ECONOMIA.xlsx', Ruta:'./multimedia/excel/indicadores/1.ECONOMIA.xlsx'}); },
            2: () => { this.DowloadFile({NameFile:'INDICADORES-MIGRACION.xlsx', Ruta:'./multimedia/excel/indicadores/2.MIGRACION.xlsx'}); },
            3: () => { this.DowloadFile({NameFile:'INDICADORES-INFRAESTRUCTURA.xlsx', Ruta:'./multimedia/excel/indicadores/3.INFRAESTRUCTURA.xlsx'}); },
            4: () => { this.DowloadFile({NameFile:'INDICADORES-GOBERNANZA.xlsx', Ruta:'./multimedia/excel/indicadores/4.GOBERNANZA.xlsx'}); },
            5: () => { this.DowloadFile({NameFile:'INDICADORES-MEDIO-AMBIENTE.xlsx', Ruta:'./multimedia/excel/indicadores/5.MEDIO-AMBIENTE.xlsx'}); },
            6: () => { this.DowloadFile({NameFile:'INDICADORES-SALUD.xlsx', Ruta:'./multimedia/excel/indicadores/6.SALUD.xlsx'});},
            7: () => { this.DowloadFile({NameFile:'INDICADORES-CULTURA.xlsx', Ruta:'./multimedia/excel/indicadores/7.CULTURA.xlsx'});},
            8: () => { this.DowloadFile({NameFile:'INDICADORES-JUSTICIA-SEGURIDAD.xlsx', Ruta:'./multimedia/excel/indicadores/8.JUSTICIA-SEGURIDAD.xlsx'});},
            9: () => { this.DowloadFile({NameFile:'INDICADORES-TECNOLOGIA.xlsx', Ruta:'./multimedia/excel/indicadores/9.TECNOLOGIA.xlsx'}); },
            10: () => { this.DowloadFile({NameFile:'INDICADORES-LENGUA.xlsx', Ruta:'./multimedia/excel/indicadores/10.LENGUA.xlsx'});},
            11: () => { this.DowloadFile({NameFile:'INDICADORES-EDUCACION.xlsx', Ruta:'./multimedia/excel/indicadores/11.EDUCACION.xlsx'});},
            12: () => { this.DowloadFile({NameFile:'INDICADORES-AFROMEXICANA.xlsx', Ruta:'./multimedia/excel/indicadores/12.AFROMEXICANA.xlsx'});},
         };

         FILES[this.TownHall.Id_File] ? FILES[this.TownHall.Id_File]() : alert('¡Archivo no disponible, intente más tarde!');
      },
      //---------------------------------lenguas------------------------------------------------------------------
      async GetLanguages(color, search, id){
         this.Dialog_Loader = true;
         let req = [], send = false;
         try {
            this.typeLengua = search;
            await axios.get(this.http + this.TownHall.uri + '?type=points&search=' + search + '&id=' + id)
            .then((response) => {
               if(response.data.result){
                  send = true;
                  req = response.data.result;
               }
            }, error =>{ return; });

            if(req.length){
               if(search == 'Mun'){ // Lenguas que se hablan en los Municipio
                  this.Lenguages_M = req;
               }else if(search == 'Reg'){ // Lenguas que se hablan en las Regiones
                  this.Lenguages_R = req;
               }else{ // Munucios en donde se hablan una lengua en específico
                  this.Lengua_M = req;
               }
            }

         } catch (error) {
            return alert ('error: ¡Algo salió mal al buscar datos del indicador!');
         }

         if(send){
            await DrawGraphic(req, color);
            await this.Build_InfoMap(this.TownHall.uri, req);
            await this.setCitas(this.TownHall.uri);
            this.Dialog_Loader = false;
         }
      },
   },
   computed:{
      FilterData(){
         return this.TownHall.Items.filter(item => {
            return item.Desc_.toLowerCase().includes(this.TownHall.Search.toLowerCase());
         });
      }
   }
});
Vue.use(VueChart.default);