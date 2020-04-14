class ApplicationMailer < ActionMailer::Base
  default from: "Josh from Honeybadger.io <josh@honeybadger.io>",
          reply_to: "heya@honeybadger.io"
  layout "heya/campaign_mailer"
end
