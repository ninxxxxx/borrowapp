<html>
<head>
	<meta name="layout" content="main">
	<title>
	</title>
</head>
<body>
	<g:if test="${items != null}">
		<div>
			<p>แจ้งเตือนอุปกรณ์</p>
		   	<g:each var="book" in="${x}">
		    	<p>Title: ${book}</p>
			</g:each>
		</div>
	</g:if>
	<g:if test="${peoples != null}">
		<div>
			<p>แจ้งเตือนค้างคืน</p>
		   	<g:each var="book" in="${x}">
		    	<p>Title: ${book}</p>
			</g:each>
		</div>
	</g:if>
</body>
</html>