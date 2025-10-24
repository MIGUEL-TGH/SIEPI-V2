# SIEPI

http://localhost/siepi/api/login

{
  "email":"miguel@gmail.com",
  "password":"123456"
}
//-------------------------------------------------------------------------------------------
http://localhost/siepi/api/users?type=modules
{
  "id": "2",
  "token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MjExNTIyNDEsImV4cCI6MTcyMTE2NjY0MSwiZGF0YSI6eyJpZCI6IjIiLCJuYW1lIjoiTWlndWVsIEdvbWV6IEhlcm5hbmRleiIsImltZyI6Im11bHRpbWVkaWEvaW1nL3VzZXJzL0lNR18wMDEuanBnIn19.uB3OgjgITBce8rXIhvsKYeuDqtfqHSnxa_F7Tp2YWXU"
}


//-------------------------------------------------------------------------------------------
  {
    "task":3,
    "token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MjE0MTY1ODEsImV4cCI6MTcyMTQzMDk4MSwiZGF0YSI6eyJpZCI6IjIiLCJuYW1lIjoiTWlndWVsIEdvbWV6IEhlcm5hbmRleiIsImltZyI6Im11bHRpbWVkaWEvaW1nL3VzZXJzL0lNR18wMDEuanBnIn19.0YiL2It_DID8HDz_2XFxqWZLAA6j9GxLljab8Qzl1Zo",
    "params":{
      "fileName":"2024S001.jpg",
      "id": "3"
    }
  }

//-------------------------------------------------------------------------------------------
http://localhost/siepi/api/users?type=crud
{
  "task":1,
  "token":"",
  "params":{
      "email":"rodrigo.perez@gmail.com",
      "name":"Rodrigo Perez"  
    }
}

{
    "email":"rodrigo.perez@gmail.com",
    "password":"IPPI_2020",
    "time":"14:13:58"
}

{
    "email":"miguel@gmail.com",
    "password":"MTGH/2022",
    "time":"14:13:58"
}

{
    "email":"rafa@gmail.com",
    "password":"IPPI_2020",
    "time":"14:13:58"
}

rodrigo.perez@gmail.com
IPPI_2020


123456 --> $2a$07$sdFqwdAQDGSGFsdfw236ruoGxyLU.oIAB5QouVhJuZPgUk/IDgHvu
newPass --> $2a$07$sdFqwdAQDGSGFsdfw236ruk4dmPyfw6G49JRdo.njJ.LVR7ZsSiXS
IPPI_2020 --> $2a$07$sdFqwdAQDGSGFsdfw236ru5yFifCilR7m4PP9X5TUGQqB57nwXb5q
MTGH_2022 --> 


{
  "token":"",
  "task":"5",
  "params":{
      "currentPassword":"123456",
      "confirmPassword": "newPass",
      "newPassword":"newPass"
   }
}

jose@gmail.com
IPPI_2020
123456

udti.ippi@gmail.com
MTGH_2022

dpciee.ippi@gmail.com
IPPI_2020


http://localhost/siepi/api/users?type=modules_permissions
http://localhost/siepi/api/user_permissions?type=crud_permissions
{
    "token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MjgyNzg3ODYsImV4cCI6MTcyODI5MzE4NiwiZGF0YSI6eyJpZCI6IjEiLCJuYW1lIjoiVW5pZGFkIGRlIERlc2Fycm9sbG8gZGUgVGVjbm9sb2dcdTAwZWRhcyBkZSBsYSBJbmZvcm1hY2lcdTAwZjNuIiwiaW1nIjoibXVsdGltZWRpYS9pbWcvdXNlcnMvMDAwMDAxLmpwZyIsInBhc3MiOiIxIn19.G43QsV_Fz-HO-XB6a0hhZVr94iV7eX9EfLcL1nCuYtA",
    "id":1,
    "params":[
        {"id": "1", "type": "module"},
        {"id": "1", "type": "sub_module"},
        {"id": "2", "type": "sub_module"},
        {"id": "3", "type": "sub_module"},
        {"id": "4", "type": "sub_module"},
        {"id": "5", "type": "sub_module"},
        {"id": "3", "type": "module"},
        {"id": "6", "type": "sub_module"}
      ]
}