$('.result').html '<%= link_to root_url + @taken.short_url, root_url + @taken.short_url, class: 'result-link', target: '_blank' %>'
toastr.warning 'URL sudah dihasilkan sebelumnya'
