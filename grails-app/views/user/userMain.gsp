<html>
<head>
<meta name="layout" content="main">
	<meta charset = "utf-8" />
   

	
	<title></title>
</head>


<body controller="User">
	
<div class="container">
	<h1 class="text-center page-header">UserMain</h1>
	
	

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
            <g:each status="i" var="user" in="${users}">
			      <tr>
			      	<td>${i+1}</td>

			        <td><g:link action="userDetails" params="[userId:"${user.id}"]">${user.firstName}</g:link></td>
			        <td><g:link action="deleteUser" params="[userId:"${user.id}"]">DELETE</g:link></td>
			      </tr>


            </g:each>
      		<tr><td>

      			<g:form controller="User">
    <g:actionSubmit value="เพิ่มสมาชิก" action="addUser" class="btn btn-default"/></g:form>
    <td></td>
    <td></td>


			</td></tr>   
			
			</tbody>
			</table>


	</div>
	
</div>
</body>
</html>