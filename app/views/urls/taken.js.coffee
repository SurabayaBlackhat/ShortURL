$('.result').html '<%= link_to root_url + @taken.short_url, root_url + @taken.short_url, class: 'result-link', target: '_blank' %>'
toastr.success 'URL sudah dihasilkan sebelumnya'
