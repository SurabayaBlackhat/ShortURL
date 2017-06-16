class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include ApplicationHelper

  public
    def not_found
      render 'errors/not_found', status: 404, layout: 'application_error'
    end

    def unprocessable_entity
      render 'errors/unprocessable_entity', status: 422, layout: 'application_error'
    end

    def internal_server_error
      render 'errors/internal_server_error', status: 500, layout: 'application_error'
    end
end
