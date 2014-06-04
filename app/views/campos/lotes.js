$('#Lote').empty();
<% @lotes.each do |s| %>
	$('#Lote').append(new Option('<%= s.lote%>','<%= s.id %>' ));
<%end%>
