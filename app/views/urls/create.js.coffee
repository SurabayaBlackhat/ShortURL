<% if @url.errors.any? %>
  <% @url.errors.full_messages.each do |message| %>
    toastr.error '<%= message %>'
  <% end %>
<% else %>
  $('.result').html '<%= escape_javascript(render 'urls/success') %>'
<% end %>