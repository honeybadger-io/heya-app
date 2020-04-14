class ApplicationCampaign < Heya::Campaigns::Base
  default from: "Josh from Honeybadger.io <heya@honeybadger.io>"

  segment { |u| u.confirmed_at? && !u.opted_out? }
end
