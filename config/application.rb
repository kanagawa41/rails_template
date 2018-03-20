require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SkillBlog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      g.jbuilder false
      g.assets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end

    # タイムゾーンの設定
    config.time_zone = 'Tokyo'

    # 使用言語
    I18n.available_locales = %i(ja)
    I18n.enforce_available_locales = true
    I18n.default_locale = :ja

    # field_with_errorsの出力を制御する
    # https://qiita.com/youcune/items/76a50ae3a2863a8f8b00
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      if instance.kind_of?(ActionView::Helpers::Tags::Label)
        "<div class=\"field_with_errors\">#{html_tag}<i class=\"fa fa-warning fa-lg error_icon\"></i></div>".html_safe
      else
        %Q(#{html_tag}).html_safe
      end
    end

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end
