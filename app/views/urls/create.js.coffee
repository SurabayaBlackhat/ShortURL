<% if @url.errors.any? %>
	toastr.error '<%= @url.errors.full_messages.first %>'
<% else %>
	$('.result').html '<%= link_to root_url + @url.short_url, root_url + @url.short_url, class: 'result-link', target: '_blank' %>'
	toastr.success 'URL berhasil dibuat'
<% end %>
