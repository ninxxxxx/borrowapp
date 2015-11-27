<html>
<head>
	<meta name="layout" content="main">
	<title>
	</title>
</head>
<body>

	<div class = "container">
		<h1 class="text-center page-header">เพิ่มรายการ</h1>
	</div>

	<div class="row">
    <div class="col-xs-6 col-md-4"></div>
    <div class="col-xs-6 col-md-4">

      <g:form class="form-horizontal">

        <div class="form-group">
          <label for="inputitemid" class="col-sm-5 control-label">เลือกอุปกรณ์</label>
          <div class="col-sm-7">
            <g:textField name="title" class="form-control" id="inputitemid" placeholder=""/>
          </div>
        </div>

        <div class="form-group">
          <label for="inputitemid" class="col-sm-5 control-label">จำนวน</label>
          <div class="col-sm-7">
            <g:textField name="title" class="form-control" id="inputitemid" placeholder=""/>
          </div>
        </div>


        <div class="form-group">
        <div class="col-sm-offset-6 col-sm-6">
          <br>
          <g:actionSubmit value="เพิ่ม" action="savePicking" class="btn btn-default"/>
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