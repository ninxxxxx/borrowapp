<html>
<head>
  <meta charset = "utf-8" />
  <title></title>
<asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
</head>
<body controller="User">
  <div class="container">


      <g:render template="/menu/navbar"/>

    <div class="row">
     <div class="col-xs-5 "></div>
     <div class="col-xs-5 col-md-6"><h1>รายละเอียดสมาชิก</h1></div>
     <div class="col-xs-5 "></div>  
   </div>

   <br>
   <div class="row">
    <div class="col-xs-6 col-md-4"></div>
    <div class="col-xs-6 col-md-4">

      <form class="form-horizontal">
        <g:hiddenField name="userId" value="${user.id}"/>
      </div>
      
    </div>
    </div>



<table id="itemTable"  align="center" style="width:50%" class="table table-striped">
    
      <tbody>
           
            <tr>
              <th>ชื่อผู้ใช้ (user name)</th>   <td>${user.username} </td>
            </tr>
           
            <tr>
              <th>รหัสผ่าน (password) </th>   <td>${user.password} </td>
            </tr>
            
            <tr>
              <th>ชื่อ</th><td>${user.firstName} </td>
            </tr>

            <tr>
              <th>สกุล </th>   <td> ${user.lastName}</td>
            </tr>

            <tr>
              <th>เบอ์โทรศัทพ์</th>   <td>${user.tel}</td>
            </tr>

            <tr>
              <th>รหัสบัตร (passcode) </th>   <td>${user.passcode}</td>
            </tr>
            <tr>
              <th>รหัส RFID</th>   <td> ${user.rfidCode} </td>
            </tr>
            <tr>
              <td>
                  <g:actionSubmit value="EDIT" action="editUser" params="[userId:"${user.id}"]" class="btn btn-default"/> 
                  <g:actionSubmit value="DELETE" action="deleteUser" params="[userId:"${user.id}"]" class="btn btn-default"/>
                  <g:actionSubmit value="BACK" action="userMain" class="btn btn-default"/>  
              </td>
            </tr>

      </tbody>
      </table>


    <div class="col-xs-6 col-md-4"></div>
  </div>

</div>


</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</div>
</body>
</html>