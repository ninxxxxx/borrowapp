<html>
<head>
  <meta name="layout" content="main">
  <meta charset = "utf-8" />
  <title></title>
 
</head>
<body controller="User">
<div class="container">



<div class="row">
 <div class="col-xs-2 col-md-2"></div>
  <div class="col-xs-8 col-md-8"><center><h1>Edit Item</h1></center></div>
 <div class="col-xs-2 col-md-2"></div>  
</div>

<br>



<div class="row">
  <div class="col-xs-3 col-md-4"></div>

  <div class="col-xs-6 col-md-4">



<g:form class="form-horizontal">
    <g:hiddenField name="itemId" value="${item.id}" />
  <div class="form-group">
    <div class="col-sm-7">
      Title : <g:textField name="title" value="${item.title}" class="form-control" id="inputitemid" placeholder=""/>
    </div>
  </div>
<br>
    <div class="form-group">
    <div class="col-sm-7">
      Category :<g:textField name="category"  value="${item.category}" class="form-control" id="inputitemname"  placeholder=""/>
    </div>
  </div>
<br>
  <div class="form-group">
    <div class="col-sm-7">
      Least :<g:textField name="least" value="${item.least}" class="form-control" id="inputamount"  placeholder=""/>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-7">
      Amount :<g:textField name="amount" value="${item.amount}" class="form-control" id="inputamount" placeholder=""/>
    </div>
  </div>    
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-3">
      <center><g:actionSubmit value="Submit" action="updateItem" class="btn btn-primary"/><center>
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