class Images_ { // Azúcar sintáctica
   constructor (){
      this.id = 0;
      this.name = '';
      this.file = '';
      this.url = '';
      this.style = '';
      this.type = '';
      this.valName = 0;       //  0 --> valido      1 --> no valido
      this.valServ = 0;       //  0 --> No existe     1 --> Existe
   }

   async setValidator(value){
      const FILE = {
         'articles': async () => { // Articulos del almacen
            let re = /^[a-zA-Z0-9][A-Za-z0-9-_.]*$/;
            if(!re.test(this.file.name) || this.file.name.length > 50){ return this.valName = 1; }
            
            await axios.post('../controllers/UploadFile.php?Task=Exists_ImgItem', this.file.name)
            .then((response) => {
               this.valServ = response.data;
            });
         },
         'not': async () => {},
      };
      FILE[value] ? await FILE[value]() : '¡Type validator not found!'; 
   }
   async setCompress(img_) {
      return new Promise((resolve, reject) => {
         const $canvas = document.createElement("canvas");
         const imagen = new Image();
         imagen.onload = () => {
            $canvas.width = imagen.width;
            $canvas.height = imagen.height;
            $canvas.getContext("2d").drawImage(imagen, 0, 0);
            $canvas.toBlob(
               (blob) => {
                  if (blob === null) { return reject(blob);}
                  else {  resolve(blob); }
               },
               "image/jpeg",
               // "image/png", // esta propiedad en vez de bajar el peso lo aumenta
               img_.quality / 100
            );
         };
         imagen.src = URL.createObjectURL(img_.file);
      });
   }
   async setFile(item) {
      const FILE = {
         'get': async () => {
            const response = await fetch(item.url);
            const data = await response.blob();
            const file_ = new File([data], item.name, {type: data.type || 'image/jpeg'});

            this.file = file_;
            this.url = URL.createObjectURL(file_);
            this.style = 'border-bottom: 5px solid #08bd4d !important';

            (item.id) ? this.id = parseInt(item.id) : this.id = 0;
            (item.name) ? this.name = item.name : this.id = 0;
         },
         'Compress_New': async () => {
            console.log(item);

            if(item.file.size > 1000000){ // 1000000 = 1 MB
               const blob = await this.setCompress({file: item.file, quality: 20});
               const file_ = new File([blob], item.file.name, {type: blob.type || 'image/jpeg'});
               this.file = file_;
               this.url = URL.createObjectURL(file_);
            }else{
               this.file = item.file;
               this.url = URL.createObjectURL(item.file);
            }
         },
         'compress': async () => {
            // console.log('compress');               
            const blob = await this.setCompress({file: item.file, quality: item.quality});
            const file_ = new File([blob], item.file.name, {type: blob.type || 'image/jpeg'});
            this.file = file_;
            this.url = URL.createObjectURL(file_);
            
         },
         'not': async () => {},
      };
      FILE[item.type] ? await FILE[item.type]() : '';
   }
   async setUpload(http, id) {
      try {
         let File_ = new FormData();
         File_.append("Upload_file", this.file);
         let res = {};
         if(http.length){
            await axios.post(http, File_)
            .then((response) => {
               // console.log(response.data);
               if(response.data.status === 200){
                  res = response.data.result;
                  this.id = id;
                  this.name = res.fileName;
                  this.style = 'border-bottom: 5px solid #08bd4d !important';
               }
            });
         }
         return res;
      } catch (error) {
         console.log(error);
      }
   }
   async setDelete(http) {
      let res = {};
      try {
         // console.log(http);
         await axios.get(http)
         .then((response) => {
            res = response.data;
         });
         return res;
      } catch (error) {
         console.log(error.response.data);
      }
   }
}

export default Images_;
