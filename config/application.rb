require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module SBHShortUrl
  class Application < Rails::Application
    config.load_defaults 5.1

    config.time_zone = 'Asia/Jakarta'
    config.active_record.default_timezone = :utc
    config.active_record.schema_format = :ruby

    config.action_dispatch.default_headers = {
      'X-XSS-Protection' => '1; mode=block'
    }

    config.action_view.field_error_proc = Proc.new { |html_tag, instance|
      "#{html_tag}".html_safe
    }

    require Rails.root.join('lib/custom_exceptions')
    config.exceptions_app = CustomExceptions.new(Rails.public_path)

    config.generators do |g|
      g.assets = false
      g.helper = false
      g.jbuilder = false
    end

    # config.i18n.default_locale = :id

    Turnout.configure do |config|
      config.app_root = '.'
      config.named_maintenance_file_paths = { default: config.app_root.join('tmp', 'maintenance.yml').to_s }
      config.maintenance_pages_path = 'app/views/errors/maintenance'
      config.default_maintenance_page = Turnout::MaintenancePage::HTML
      config.default_reason = 'SBH Short URL under maintenance.'
      config.default_allowed_paths = []
      config.default_response_code = 503
      config.default_retry_after = 7200
    end
  end
end
