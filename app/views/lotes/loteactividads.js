$('#Actividad').empty();
<% @loteactividads.each do |p| %>
	$('#Actividad').append(new Option('<%= p.actividad.actividad %>','<%= p.actividad.id %>' ));
<%end%>
