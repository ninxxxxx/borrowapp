<html>
<head>
  <meta charset = "utf-8" />
  <title></title>
  <script type="text/javascript"scr = "bower_components/jquery/dist/jquery.js"></script>
<script type="text/javascript" scr = "bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="bower_components/bootstrap/dist/css/bootstrap.min.css" >

<link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="main.css" rel="stylesheet">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</div>

</head>
<body controller="Item">
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
 <div class="col-xs-4 "></div>
  <div class="col-xs-4 col-md-6"><h1>เพิ่ม/ลด จำนวนอุปกรณ์</h1></div>
 <div class="col-xs-4 "></div>  
</div>

<br>

<g:from>

<div class="row">
  <div class="col-xs-6 col-md-4"></div>




  <div class="col-xs-6 col-md-4">



    <form class="form-horizontal">

  <div class="form-group">
    <label for="inputitemid" class="col-sm-4 control-label">รหัสอุปกรณ์</label>
    <div class="col-sm-7">
      <g:textArea name="itemID" class="form-control" id="inputitemid" placeholder=""/>
    </div>
  </div>

    <div class="form-group">
    <label for="inputitemname" class="col-sm-4 control-label">ชื่ออุปกรณ์</label>
    <div class="col-sm-7">
      <g:textArea name="itemNAME" class="form-control" id="inputitemname" placeholder=""/>
    </div>
  </div>

  <div class="form-group">
    <label for="inputamount" class="col-sm-4 control-label">จำนวน</label>
    <div class="col-sm-7">
      <g:textArea name="amount" class="form-control" id="inputamount" placeholder=""/>
    </div>
  </div>
  
  <div class="form-group">
    <label for="inputleast" class="col-sm-4 control-label">ขั้นต่ำ</label>
    <div class="col-sm-7">
      <g:textArea name="least" class="form-control" id="inputleast" placeholder=""/>
    </div>
  </div>

  

  </div>
  <div class="form-group">
    <div class="col-sm-offset-5 col-sm-10">
      <br>
      
      <g:actionSubmit value="Submit" action="addItem" class="btn btn-primary"/>
    </div>

  </div> </div>


  <div class="col-xs-6 col-md-4"></div>
</div>


</div>


</div>
</g:form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</div>
</body>
</html>