<html>
<head>
  <meta charset = "utf-8" />
    <meta name="layout" content="main">
  <title></title>
 
</head>
<body controller="User">
<div class="container">



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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</div>
</body>
</html>