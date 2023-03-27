# frozen_string_literal: true

# ApplicationMailer - sets configuration for mail
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
