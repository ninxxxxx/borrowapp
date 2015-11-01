<html>
<head>
  <meta charset = "utf-8" />
  <title></title>
  <script type="text/javascript"src = "bower_components/jquery/dist/jquery.js"></script>
  <script type="text/javascript" src = "bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.min.css" >

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="main.css" rel="stylesheet">



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

       <div class="form-group">
        <g:hiddenField name="userId" value="${user.id}" />
        <label for="inputitemid" class="col-sm-8 control-label">ชื่อผู้ใช้ (user name) :${user.username}       
                <g:each in="${users}"> ${user.username}</g:each></label>
       </div>

      <div class="form-group">
        <label for="inputamount" class="col-sm-8 control-label">รหัสผ่าน (password) :  ${user.password}
                <g:each in="${users}"> ${user.password}</g:each></label>
      </div>

      <div class="form-group">
        <label for="inputleast" class="col-sm-8 control-label">ชื่อ :  ${user.firstName}
                <g:each in="${users}"> ${user.firstName}</g:each></label>
      </div>

      <div class="form-group">
        <label for="inputleast" class="col-sm-8 control-label">สกุล :  ${user.lastName}
                 <g:each in="${users}"> ${user.lastName}</g:each></label>
      </div>

      <div class="form-group">
        <label for="inputleast" class="col-sm-8 control-label">เบอ์โทรศัทพ์ :  ${user.tel}
                 <g:each in="${users}"> ${user.tel}</g:each></label>
      </div>

      <div class="form-group">
        <label for="inputleast" class="col-sm-8 control-label">รหัสบัตร (passcode) :  ${user.passcode}
                 <g:each in="${users}"> ${user.passcode}</g:each></label>
      </div>

      <div class="form-group">
        <label for="inputleast" class="col-sm-8 control-label">รหัส RFID :   ${user.rfidCode}
                <g:each in="${users}"> ${user.rfidcode}</g:each></label>

      </div>


    </div>
    <div class="form-group">
      <div class="col-sm-offset-6 col-sm-6">
        <br>
        <g:actionSubmit value="edit" action="editUser" class="btn btn-default"/> <button type="submit" class="btn btn-default">ย้อนกลับ</button>  
      </div>

    </div> </div>


    <div class="col-xs-6 col-md-4"></div>
  </div>


</div>


</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</div>
</body>
</html>