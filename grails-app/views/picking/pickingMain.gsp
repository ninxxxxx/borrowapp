<%@ page import="com.softdev.borrowapp.Item" %>
<html>
<head>
	<meta name="layout" content="main">
	<meta charset="utf-8" />
	<title>
	</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script>
	
	$(document).ready(function(){
		$("#addBtn").click(function(){
			
			event.preventDefault();
			$.get('<g:createLink action = "pickingList"/>' + '/' , function(data){ $('.addPick').append(data);});
		});
		$(".removeBtn").click(function(){
			$("l").remove();
		});

	});
	</script>
</head>
<body controller = "Picking">
	<div class = "container">
		<h1 class="text-center page-header">Picking Main</h1>

		<center>
			<div class="control-group" id ="s">
				<g:form class="form-horizontal">
				<div class="controls">

					<div class="addPick">
						<l>

							<g:select name="select.item" from="${com.softdev.borrowapp.Item.list()}" optionKey="id" optionValue="title" noSelection="["":"เลือกอุปกรณ์"]" style="width:400px;">
						</g:select>


						&nbsp; &nbsp;  จำนวน &nbsp; 

								<g:select name="select.a" from="${1..20}" value="${amount}"
								noSelection="['':'0']" style="width:40px;"/>
								&nbsp; &nbsp;
								<button class ="removeBtn btn btn-danger">Delete</button>

							</l>
						</div>

					</div>
				</div>

				<button id="addBtn">+</button>
				<br><br>
				<g:actionSubmit value="Submit" action="s" class="btn btn-default"/>
			</g:form>
		</center>
	</div>

</body>
</html>
