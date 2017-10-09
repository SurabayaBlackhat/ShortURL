module ApplicationHelper
	def uri_last_str(uri)
		last_str = uri.split(//).last(1).join
	  if last_str == '/'
			uri.chomp('/')
	  else
			uri
	  end		
	end
end
