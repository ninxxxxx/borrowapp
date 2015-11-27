<%@ page import="com.softdev.borrowapp.Item" %>
<html>
<head>
	<meta name="layout" content="main">
	<meta charset="utf-8" />
	<title>
	</title>
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
	<!-- <script src="../js/bootstrap.min.js"></script>-->
</head>
<body controller = "Picking">
	<div class = "container">
		<h1 class="text-center page-header">สรุปรายการเบิก</h1>
	
	</div>
	<table id="pickTable"  align="center" style="width:50%" class="table table-striped">
	    	<thead>
			      <tr>
				      <th>ลำดับที่</th>
				      <th>อุปกรณ์ที่ยืม</th>
				      <th>จำนวน</th>
				      
			      </tr>
			</thead>
			<tbody>
            
            	 <g:each status="i" in="${pick}" var="p">
			      <tr>
			      	<td>${i+1}</td>
			      	<td>${p.item.title}</td>
			      	
			      </tr>


            </g:each>
   				
            
     		</tbody>
      <tr><td>
		</table>

	
</body>
</html>
