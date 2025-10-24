class Charts_ { // Azúcar sintáctica
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

export default Charts_;