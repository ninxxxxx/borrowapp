<%@ page import="com.softdev.borrowapp.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'tel', 'error')} required">
	<label for="tel">
		<g:message code="user.tel.label" default="Tel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tel" required="" value="${userInstance?.tel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userNo', 'error')} required">
	<label for="userNo">
		<g:message code="user.userNo.label" default="User No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userNo" required="" value="${userInstance?.userNo}"/>

</div>

