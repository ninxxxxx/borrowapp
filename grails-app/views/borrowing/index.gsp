
<%@ page import="com.softdev.borrowapp.Borrowing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'borrowing.label', default: 'Borrowing')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-borrowing" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-borrowing" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="borrowing.item.label" default="Item" /></th>
					
						<th><g:message code="borrowing.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${borrowingInstanceList}" status="i" var="borrowingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${borrowingInstance.id}">${fieldValue(bean: borrowingInstance, field: "item")}</g:link></td>
					
						<td>${fieldValue(bean: borrowingInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${borrowingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
