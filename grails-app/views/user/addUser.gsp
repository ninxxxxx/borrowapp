

<html>
<head>
  <meta charset = "utf-8" />
  <meta name="layout" content="main">
  <title></title>

</div>

</head>
<body controller="User">
  <div class="container">

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