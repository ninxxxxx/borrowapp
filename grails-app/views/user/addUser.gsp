

<html>
<head>
  <meta charset = "utf-8" />
  <title></title>
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

</div>

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
     <div class="col-xs-5 col-md-6"><h1>เพิ่มสมาชิก</h1></div>
     <div class="col-xs-5 "></div>  
   </div>

   <br>



   <div class="row">
    <div class="col-xs-6 col-md-4"></div>
    <div class="col-xs-6 col-md-4">

      <g:form class="form-horizontal">

        <div class="form-group">
          <label for="inputitemid" class="col-sm-5 control-label">ชื่อผู้ใช้ (user name)</label>
          <div class="col-sm-7">
            <g:textField name="username" class="form-control" id="inputitemid" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputamount" class="col-sm-5 control-label">รหัสผ่าน (password)</label>
          <div class="col-sm-7">
            <g:textField name="password" class="form-control" id="inputamount" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputleast" class="col-sm-5 control-label">ชื่อ</label>
          <div class="col-sm-7">
            <g:textField name="firstName"  class="form-control" id="inputleast" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputleast" class="col-sm-5 control-label">สกุล</label>
          <div class="col-sm-7">
            <g:textField name="lastName"  class="form-control" id="inputleast" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputleast" class="col-sm-5 control-label">เบอ์โทรศัทพ์</label>
          <div class="col-sm-7">
            <g:textField name="tel" class="form-control" id="inputleast" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputleast" class="col-sm-5 control-label">รหัสบัตร (passcode)</label>
          <div class="col-sm-7">
            <g:textField name="passcode" class="form-control" id="inputleast" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputleast" class="col-sm-5 control-label">รหัส RFID</label>
          <div class="col-sm-7">
            <g:textField name="rfidCode" class="form-control" id="inputleast" placeholder=""/>
          </div>
        </div>


      </div>
      <div class="form-group">
        <div class="col-sm-offset-6 col-sm-6">
          <br>
          <g:actionSubmit value="เพิ่ม" action="saveUser" class="btn btn-default"/>
        </div>

      </div> </div>


      <div class="col-xs-6 col-md-4"></div>
    </div>


  </div>
</g:form>
</div>
</div>
</body>
</html>