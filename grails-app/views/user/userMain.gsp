<html>
<head>

	<meta charset = "utf-8" />
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

	
	<title></title>
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
							<li><g:link  action="remind" >แจ้งเตือน</g:link></li>
							<li><g:link  action="history" >ประวัติ</g:link></li>
				        	<li><g:link controller="Item" action="itemMain" >อุปกรณ์</g:link></li>
							<li><g:link action="userMain" >สมาชิก</g:link></li>
							
						</ul>
						<ul class="nav navbar-nav ">
		        			<g:actionSubmit value="Sign out" action="signOut" class="btn btn-default navbar-btn"/>
		      			</ul>
						
						<ul class="nav navbar-nav navbar-right">
						
		        			<form method="get" action="http://www.google.com/search">
									<input type="text"   name="q" size="20" style="color:#808080;"
									maxlength="100" value="Google site search"
									onfocus="if(this.value==this.defaultValue)this.value=''; this.style.color='black';" 
									onblur="if(this.value=='')this.value=this.defaultValue; "/>
									<input type="submit" value="Go!" class="btn btn-default navbar-btn" />
									<input type="hidden" name="sitesearch"  value="" />
							</form>
						</ul>
		      	
						

		      			

	    	</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>

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
            <g:each var="user" in="${users}">
			      <tr>
			        <td>${user.id}</td>

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




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	
</div>
</body>
</html>