<html>
<head>
  <meta charset = "utf-8" />
  <title></title>
<asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
</head>
<body controller="User">
  <div class="container">


        <nav class="navbar navbar-default">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://www.coe.psu.ac.th/">COE</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="admin.html">Home <span class="sr-only">(current)</span></a></li>
            <li><a href="#">การแจ้งเตือน</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">อุปกรณ์ <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="add.html">เพิ่ม-ลบ อุปกรณ์</a></li>
                <li><a href="check.html">รายละเอียดอุปกรณ์</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">สมาชิก <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="adduser.html">เพิ่มสมาชิก</a></li>
                <li><a href="detailuser.html">รายชื่อสมาชิก</a></li>
              </ul>
            </li>
            <li><a href="history.html">ประวัติ</a></li>
          </ul>

          

          <form class="navbar-form navbar-right" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">search</button>
          </form>

          <ul class="nav navbar-nav navbar-right">
            <button type="button" class="btn btn-default navbar-btn">Sign out</button>

          </ul>

        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

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
              <td><g:actionSubmit value="EDIT" action="editUser" params="[userId:"${user.id}"]" class="btn btn-default"/> <g:actionSubmit value="DELETE" action="deleteUser" params="[userId:"${user.id}"]" class="btn btn-default"/> <g:actionSubmit value="BACK" action="userMain" class="btn btn-default"/>  </td>
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