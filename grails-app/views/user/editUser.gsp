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
              <li><a href="check.html">เช็คจำนวนอุปกรณ์</a></li>
              <li><a href="add.html">เพิ่ม-ลบอุปกรณ์</a></li>
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
 <div class="col-xs-2 col-md-2"></div>
  <div class="col-xs-8 col-md-8"><h1>Edit User</h1></div>
 <div class="col-xs-2 col-md-2"></div>  
</div>

<br>



<div class="row">
  <div class="col-xs-3 col-md-4"></div>

  <div class="col-xs-6 col-md-4">



<g:form class="form-horizontal">

  <div class="form-group">
    <g:hiddenField name="userId" value="${user.id}" />
    <div class="col-sm-7">
      User name : <g:textField name="username" value="${user.username}" class="form-control" id="inputitemid" placeholder=""/>
    </div>
  </div>
<br>
    <div class="form-group">
    <div class="col-sm-7">
      password :<g:textField name="password"  value="${user.password}" class="form-control" id="inputitemname"  placeholder=""/>
    </div>
  </div>
<br>
  <div class="form-group">
    <div class="col-sm-7">
      firstName :<g:textField name="firstName" value="${user.firstName}" class="form-control" id="inputamount"  placeholder=""/>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-7">
      lastName :<g:textField name="lastName" value="${user.lastName}" class="form-control" id="inputamount" placeholder=""/>
    </div>
  </div>
<div class="form-group">
    <div class="col-sm-7">
      Tel. :<g:textField name="tel" value="${user.tel}" class="form-control" id="inputamount"  placeholder=""/>
    </div>
  </div>
<div class="form-group">
    <div class="col-sm-7">
      passcode :<g:textField name="passcode" value="${user.passcode}" class="form-control" id="inputamount"  placeholder=""/>
    </div>
  </div> 
<div class="form-group">
    <div class="col-sm-7">
      passcode :<g:textField name="rfidCode" value="${user.rfidCode}" class="form-control" id="inputamount"  placeholder=""/>
    </div>
  </div>   
  </div>
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-3">
      <center><g:actionSubmit value="Submit" action="updateUser" class="btn btn-primary"/><center>
    </div>
  </div> 
</div>
  <div class="col-xs-3 col-md-4"></div>
</div>

</div>
</g:form>

</div>

</div>
</body>
</html>