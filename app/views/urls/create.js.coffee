<% if @url.errors.any? %>
  <% @url.errors.full_messages.each do |message| %>
    toastr.error '<%= message %>'
  <% end %>
<% else %>
  $('.result').html '<%= link_to root_url + @url.short_url, root_url + @url.short_url, class: 'result-link', target: '_blank' %>'
  toastr.success 'URL berhasil dibuat'
<% end %>