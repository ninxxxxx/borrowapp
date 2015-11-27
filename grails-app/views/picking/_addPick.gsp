<%@ page import="com.softdev.borrowapp.Item" %>
<tr class = "pickingInstance">

	<td>
		<g:select name="select.item" from="${com.softdev.borrowapp.Item.list()}" optionKey="id" optionValue="title" noSelection="["":"เลือกอุปกรณ์"]" style="width:400px;">
					</g:select>
					
					
					&nbsp; &nbsp;  จำนวน &nbsp; 
					<g:select name="select.a" from="${1..20}" value="${amount}"
								noSelection="['':'0']" style="width:40px;"/>
								&nbsp; &nbsp;
								<button class ="removeBtn btn btn-danger">Delete</button>
	</td>
	
</tr>
<script>
$(document).ready(function(){
		$(".removeBtn").click(function(){
			$(this).closest("tr").remove();
		});
	});
</script>
