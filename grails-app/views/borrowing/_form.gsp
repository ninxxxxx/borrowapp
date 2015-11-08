<%@ page import="com.softdev.borrowapp.Borrowing" %>



<div class="fieldcontain ${hasErrors(bean: borrowingInstance, field: 'item', 'error')} required">
	<label for="item">
		<g:message code="borrowing.item.label" default="Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="item" name="item.id" from="${com.softdev.borrowapp.Item.list()}" optionKey="id" required="" value="${borrowingInstance?.item?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: borrowingInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="borrowing.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.softdev.borrowapp.User.list()}" optionKey="id" required="" value="${borrowingInstance?.user?.id}" class="many-to-one"/>

</div>

