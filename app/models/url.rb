class Url < ApplicationRecord
  validates :external_url,
            presence: true

  validate :validate_format

  private
    def validate_format
      errors[:base] << 'URL hanya diperbolehkan dari sumber domain SBH' if valid_http(self.external_url).nil?
    end
end
