# frozen_string_literal: true

Devise.setup do |config|
  config.omniauth :google_oauth2,
                  Rails.application.credentials.dig(:google, :google_client_id),
                  Rails.application.credentials.dig(:google, :google_client_secret),
                  scope: 'userinfo.email,userinfo.profile'
  # config.secret_key = '22f828bd3eed12092cbdff27f4b2590fc1b9f4c6f6014956480' \
  #   `c4655bfa52fa1ade7a1f5151a7c0fc5221eac1aa3de9c762a215850651dc6c7b6e89269d12e5c'
  # config.parent_controller = 'DeviseController'
  config.mailer_sender = 'adam@example.com'
  # config.mailer = 'Devise::Mailer'
  # config.parent_mailer = 'ActionMailer::Base'
  require 'devise/orm/active_record'
  # config.authentication_keys = [:email]
  # config.request_keys = []
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  # config.params_authenticatable = true
  # config.http_authenticatable = false
  # config.http_authenticatable_on_xhr = true
  # config.http_authentication_realm = 'Application'
  # config.paranoid = true
  # passing skip: :sessions to `devise_for` in your config/routes.rb
  config.skip_session_storage = [:http_auth]
  # config.clean_up_csrf_token_on_authentication = true
  # config.reload_routes = true
  config.stretches = Rails.env.test? ? 1 : 12
  # config.pepper = 'a09ac68ebe17e2406830f7443736da8f076c049532caaaae8461e6a' /
  #   'cd4ff736fcca23b2ebd069f53c4aa600563504e5077bcc657792c788bc90a5c2aba87b05a'
  # config.send_email_changed_notification = false
  # config.send_password_change_notification = false
  # config.allow_unconfirmed_access_for = 2.days
  # config.confirm_within = 3.days
  config.reconfirmable = true
  # config.confirmation_keys = [:email]
  # config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true
  # config.extend_remember_period = false
  # config.rememberable_options = {}
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  # config.timeout_in = 30.minutes
  # config.lock_strategy = :failed_attempts
  # config.unlock_keys = [:email]
  # config.unlock_strategy = :both
  # config.maximum_attempts = 20
  # config.unlock_in = 1.hour
  # config.last_attempt_warning = true
  # config.reset_password_keys = [:email]
  config.reset_password_within = 10.minutes
  # config.sign_in_after_reset_password = true
  # config.encryptor = :sha512
  # config.scoped_views = false
  # config.default_scope = :user
  # config.sign_out_all_scopes = true
  # config.navigational_formats = ['*/*', :html, :turbo_stream]
  config.sign_out_via = :delete
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end
  # config.router_name = :my_engine
  # config.omniauth_path_prefix = '/my_engine/users/auth'
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other
  # config.sign_in_after_change_password = true
end
