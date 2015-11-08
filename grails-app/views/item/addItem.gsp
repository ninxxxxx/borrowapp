<html>
<head>
  <meta name="layout" content="main">
  <meta charset = "utf-8" />
  <title></title>
   

</div>

</head>
<body controller="Item">
  <div class="container">



    <div class="row">
     <div class="col-xs-5 "></div>
     <div class="col-xs-5 col-md-6"><h1>เพิ่มอุปกรณ์</h1></div>
     <div class="col-xs-5 "></div>  
   </div>

   <br>



   <div class="row">
    <div class="col-xs-6 col-md-4"></div>
    <div class="col-xs-6 col-md-4">

      <g:form class="form-horizontal">

        <div class="form-group">
          <label for="inputitemid" class="col-sm-5 control-label">รหัสอุปกรณ์</label>
          <div class="col-sm-7">
            <g:textField name="title" class="form-control" id="inputitemid" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputamount" class="col-sm-5 control-label">ชื่ออุปกรณ์</label>
          <div class="col-sm-7">
            <g:textField name="category" class="form-control" id="inputamount" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputleast" class="col-sm-5 control-label">จำนวน</label>
          <div class="col-sm-7">
            <g:textField name="least"  class="form-control" id="inputleast" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputleast" class="col-sm-5 control-label">ขั้นต่ำ</label>
          <div class="col-sm-7">
            <g:textField name="amount"  class="form-control" id="inputleast" placeholder=""/>
          </div>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-6 col-sm-6">
          <br>
          <g:actionSubmit value="เพิ่ม" action="saveItem" class="btn btn-default"/>
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