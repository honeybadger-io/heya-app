class ApplicationCampaign < Heya::Campaigns::Base
  default from: "Josh from Honeybadger.io <josh@honeybadger.io>",
          reply_to: "heya@honeybadger.io"

  segment { |u| u.confirmed_at? && !u.opted_out? }
end
