class Url < ApplicationRecord
  validates :external_url, presence: true
  validate :validate_format
  before_create :set_short_url

  private
    def validate_format
      uri = self.external_url
      if DOMAIN_VALID.include?(URI.parse(uri).host)
        uri_code = URI(uri)
        res = Net::HTTP.get_response(uri_code)
        if res.code == '200' || res.code == '301'
          last_str = uri.split(//).last(1).join
          if last_str == '/'
            self[:external_url] = uri.chomp('/')
          else
            self[:external_url] = uri
          end
        elsif res.code == '404'
          errors[:base] << "URI tidak dapat ditemukan"
        else
          errors[:base] << "Saya bingung!"
        end
      else
        errors[:base] << "URI hanya diperbolehkan dari sumber domain SBH"
      end
    end

    def set_short_url
    	self[:short_url] = SecureRandom.urlsafe_base64(4)    	
    end
end
