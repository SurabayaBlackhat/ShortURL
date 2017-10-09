module ApplicationHelper
	def validate_params(param)
		begin
			if param.present?
				param
			else
				false
				not_found
			end
		rescue
			false
			not_found
		end
	end

	def uri_last_str(uri)
		last_str = uri.split(//).last(1).join
	  if last_str == '/'
			uri.chomp('/')
	  else
			uri
	  end		
	end
end
