class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include ApplicationHelper

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
