<%@ page import="com.softdev.borrowapp.Picking" %>



<div class="fieldcontain ${hasErrors(bean: pickingInstance, field: 'item', 'error')} required">
	<label for="item">
		<g:message code="picking.item.label" default="Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="item" name="item.id" from="${com.softdev.borrowapp.Item.list()}" optionKey="id" required="" value="${pickingInstance?.item?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pickingInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="picking.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.softdev.borrowapp.User.list()}" optionKey="id" required="" value="${pickingInstance?.user?.id}" class="many-to-one"/>

</div>

