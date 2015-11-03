<html>
<head>

	<meta charset = "utf-8" />
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>

	
	<title></title>
</head>


<body>
	
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
							<li class="dropdown">
				          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">อุปกรณ์ <span class="caret"></span></a>
				          		<ul class="dropdown-menu">
				            		<li><a href="add.html">เพิ่ม-ลบ อุปกรณ์</a></li>
						            <li><a href="check.html">รายละเอียดอุปกรณ์</a></li>
				          		</ul>
				        	</li>
				        	<li class="dropdown">
				          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">สมาชิก <span class="caret"></span></a>
				          		<ul class="dropdown-menu">
				            		<li><a href="add.html">เพิ่มสมาชิก</a></li>
						            <li><a href="detailuser.html">รายชื่อสมาชิก</a></li>
				          		</ul>
				        	</li>
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
			      </tr>
            </g:each>
      
			   

			</tbody>
			</table>


	</div>




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	
</div>
</body>
</html>