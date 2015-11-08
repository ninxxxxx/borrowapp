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
	
	

	
   		<table id="itemTable"  align="center" style="width:50%" class="table table-striped">
	    	<thead>
			      <tr>
				      <th>ลำดับที่</th>
				      <th>ชื่อ</th>
				      <th>หมวดหมู่</th>
				      <th>จำนวนขั้นต่ำ</th>
				      <th>จำนวนที่มีอยู่</th>
			      </tr>
			</thead>
			<tbody>
            <g:each status="i" var="item" in="${items}">
			      <tr>
			        <td>${i+1}</td>
			        <td><g:link action="editItem" params="[itemId:"${item.id}"]">${item.title}</g:link></td>
			        <td>${item.category}</td>
			        <td>${item.least}</td>
			        <td>${item.amount}</td>
			      </tr>
            </g:each>
     		</tbody>
      <tr><td><g:form controller="Item">
    <g:actionSubmit value="เพิ่มอุปกรณ์" action="addItem" class="btn btn-default"/></td><td> </td></tr>
		</table>
	</g:form>

			


	</div>




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	
</div>
</body>
</html>