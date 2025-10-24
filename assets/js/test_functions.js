function parseJwt(token) {
   let base64Payload = token.split('.')[1];
   let payload = Buffer.from(base64Payload, 'base64');
   return JSON.parse(payload.toString());
}
//eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MTcwMjMxOTEsImV4cCI6MTcxNzA1OTE5MSwiZGF0YSI6eyJpZCI6IjIiLCJlbWFpbCI6Im1pZ3VlbEBnbWFpbC5jb20ifX0.mCb3V2tgthFYIgXAOYbUtSo2F43B25fp8aq14y0-yRc
// let payload= parseJwt("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c");
let payload= parseJwt("eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MTgyOTk0NzAsImV4cCI6MTcxODMzNTQ3MCwiZGF0YSI6eyJpZCI6IjIiLCJuYW1lIjoiTWlndWVsIEdvbWV6IEhlcm5hbmRleiJ9fQ._fO94JBnPfe6YkP_Uxjl0mn3GzDCnqWMvgTfgrckSCU");
console.log("payload:- ", payload);

return;

let Data = [
   {ID:1, Genero: 'M', A:"1", B:"7", C:"12", D:"19", E: "25"},
   {ID:1, Genero: 'H', A:"2", B:"8", C:"14", D:"20", E: "26"},
   {ID:2, Genero: 'M', A:"3", B:"9", C:"15", D:"21", E: "27"},
   {ID:2, Genero: 'H', A:"4", B:"10", C:"16", D:"22", E: "28"},
   {ID:3, Genero: 'M', A:"5", B:"11", C:"17", D:"23", E: "29"},
   {ID:3, Genero: 'H', A:"6", B:"12", C:"18", D:"24", E: "30"},
];

let result = [
   {ID: 1, TotalM: 64, TotalH: 70, Total: 134},
   {ID: 2, TotalM: 75, TotalH: 80, Total: 155},
   {ID: 3, TotalM: 85, TotalH: 90, Total: 175},
];





// let result = [
//    {desc: 'De 0 a 4 años', A: 0, B: 0, C: 0, D: 0, E: 0},
//    {desc: 'De 5 a 9 años', A: 0, B: 0, C: 0, D: 0, E: 0},
//    {desc: 'De 10 a 14 años', A: 0, B: 0, C: 0, D: 0, E: 0}
// ];

// Iterar sobre cada objeto en Data
Data.forEach(obj => {
    // Iterar sobre cada propiedad en el objeto
    for (let key in obj) {
        // Obtener el valor de la propiedad y convertirlo a número
        let value = parseInt(obj[key]);
        // Verificar en qué rango de edad cae el valor de la propiedad
        if (value >= 0 && value <= 4) {
            result[0][key] += value;
        } else if (value >= 5 && value <= 9) {
            result[1][key] += value;
        } else if (value >= 10 && value <= 14) {
            result[2][key] += value;
        }
    }
});

console.log(result);
return;

// this.chart_bar.labels.splice(0,0, 'Agua', 'Electricidad', 'Drenaje');
// this.chart_bar.datasets.splice(0,0, 
//    { label: 'Con Servicios', backgroundColor: '#4CAF50', data: [result.AV, result.EV, result.DV] },
//    { label: 'Sin Servicios', backgroundColor: '#F44336', data: [result.No_VSA, result.No_VSE, result.No_VSD] }
// );
let attributes = { labels: [], datasets: [] };

let items = [
   {con: '5,000', sin: '85', desc: 'Agua'},
   {con: '7,050', sin: '105', desc: 'Drenaje'},
   {con: '6,099', sin: '95', desc: 'Electricidad'}
];

let colors = [
   {color: null, sortable: false, text: 'SERVICIOS', value: 'desc'},
   {color: '#4CAF50', sortable: false, text: 'CON SERVICIOS', value: 'con'},
   {color: '#F44336', sortable: false, text: 'SIN SERVICIOS', value: 'sin'}
];


let hasColorAttribute = items.every(item => 'con' in item);

console.log(hasColorAttribute); // Esto imprimirá false

return;

let aColors = colors.filter(item => item.color !== null);

for(const [index, element] of aColors.entries()){
   // console.log(element);
   let externa = element.value;

   let data_chart = items.map(item => item[element.value]);
   let data_values = data_chart.map(value => parseFloat(value.replace(/,/g, '')));
   // console.log(data_values);

   attributes.datasets.splice(0,0,
      { label: element.text, backgroundColor: element.color, data: data_values }
   );

}



// let keysOfFirstItem = Object.keys(items[0]);


// let con = items.map(item => item.con);
// let result = items.map(item => {
//    const { desc, ...rest } = item;
//    return rest; 
// });
// console.log(result);


attributes.labels = items.map(item => item.desc);
console.log(attributes);



// let Data = [
//    { A:"4", B:"6", C:"9", D:"12", E: "10"},
//    { A:"4", B:"10", C:"8", D:"8", E: "14"}
// ]
// let result = [
//    {desc: 'De 0 a 4 años',  H:"4",  M:"4"},
//    {desc: 'De 5 a 9 años',  H:"6",  M:"10"},
//    {desc: 'De 10 a 14 años:', H:"9",  M:"8"},
// ]