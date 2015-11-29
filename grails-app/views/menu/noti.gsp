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
		   	<g:each var="item" in="${items}">
		    	<p>${item.title} เหลือ ${item.amount}</p>
			</g:each>
		</div>
	</g:if>

	<g:form>
		<g:datePicker name="myDate" value="${new Date()}"noSelection="['':'-Choose-']"/>
		<g:actionSubmit controller="Menu" action="test" value="click"/>
	</g:form>
	%{-- <g:if test="${peoples != null}">
		<div>
			<p>แจ้งเตือนค้างคืน</p>
		   	<g:each var="picking" in="${pickings}">
		    	<p>${picking.pick.user.name} ค้างคืน ${picking.pick.item.title} ยืนไปตั้งแต่ ...</p>
			</g:each>
		</div>
	</g:if> --}%
</body>
</html>