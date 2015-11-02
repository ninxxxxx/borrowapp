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
 <div class="col-xs-4 "></div>
  <div class="col-xs-4 col-md-6"><h1>Edit User</h1></div>
 <div class="col-xs-4 "></div>  
</div>

<br>



<div class="row">
  <div class="col-xs-6 col-md-4"></div>




  <div class="col-xs-6 col-md-4">



<g:form class="form-horizontal">

  <div class="form-group">
    <g:hiddenField name="userId" value="${user.id}"/>
    <div class="col-sm-7">
      User name : <g:textField name="username" value="${user.id}" class="form-control" id="inputusername" placeholder=""/>
    </div>
  </div>
<br>
    <div class="form-group">
     
    <div class="col-sm-7">
      password :<g:textField name="password" value="${user.id}" class="form-control" id="inputpassword" placeholder=""/>
    </div>
  </div>
<br>
  <div class="form-group">
    
    <div class="col-sm-7">
      firstName :<g:textField name="firstName" value="${user.id}" class="form-control" id="inputfirstname"  placeholder=""/>
    </div>
  </div>
  <div class="form-group">
    
    <div class="col-sm-7">
      lastName :<g:textField name="lastName" value="${user.id}" class="form-control" id="inputlastname" placeholder=""/>
    </div>
  </div>
<div class="form-group">    
    <div class="col-sm-7">
      Tel. :<g:textField name="tel" value="${user.id}" class="form-control" id="inputtel" placeholder=""/>
    </div>
  </div>
<div class="form-group">   
    <div class="col-sm-7">
      passcode :<g:textField name="passcode" value="${user.id}" class="form-control" id="inputpasscode" placeholder=""/>

    </div>
  </div>  

  

  </div>
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-3">

      <center><g:actionSubmit value="Submit" action="updateUser" class="btn btn-primary"/><center>
      
    </div>

  </div> </div>


  <div class="col-xs-6 col-md-4"></div>
</div>

</div>
</g:form>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</div>
</body>
</html>