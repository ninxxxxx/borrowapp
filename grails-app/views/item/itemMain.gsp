<html>
<head>

	<meta charset = "utf-8" />
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

	
	<title></title>
</head>


<body controller="Item">
	
<div class="container">
	<g:render template="/menu/navbar"/>

	<h1 class="text-center page-header">ItemMain</h1>
	
	

	<form class="form-horizontal form-center" role="search">
		<div class="form-group">
				<label for="search" class="col-sm-4 control-label">ค้นหา</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" placeholder="ชื่อ">
					</div>
				<button type="submit" class="btn btn-default">search</button>
		</div>
			
				
	</form>

	
   		<table id="itemTable"  align="center" style="width:50%" class="table table-striped">
	    	<thead>
			      <tr>
				      <th>ลำดับที่</th>
				      <th>ชื่อ</th>
			      </tr>
			</thead>
			<tbody>
            <g:each status="i" var="item" in="${items}">
			      <tr>
			        <td>${i+1}</td>
			        <td><g:link action="itemDetails" params="[itemId:"${item.id}"]">${item.title}</g:link></td>
			      </tr>
            </g:each>
            <tr><td> </td><td> </td></tr>
            <tr><td> </td><td> </td></tr>
            <tr><td><g:form controller="Item">
    <g:actionSubmit value="เพิ่มอุปกรณ์" action="addItem" class="btn btn-default"/></td><td> </td></tr>

      </tbody>

			</table>
</g:form>

			


	</div>




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	
</div>
</body>
</html>