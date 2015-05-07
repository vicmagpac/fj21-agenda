<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false" %>

<input type="text" name="${id}" id="${id}" value="${value}">

<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>