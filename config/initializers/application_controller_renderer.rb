# Be sure to restart your server when you modify this file.

# ApplicationController.renderer.defaults.merge!(
#   http_host: 'example.org',
#   https: false
# )


Rails.application.config.secret_key_base = ENV["SECRET_KEY_BASE"] if Rails.application.config.secret_key_base.nil?
