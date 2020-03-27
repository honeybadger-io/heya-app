class ApplicationMailer < ActionMailer::Base
  default from: "Josh from Honeybadger <support@heya.email>"
  layout "heya/campaign_mailer"
end
