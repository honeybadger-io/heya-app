class ApplicationCampaign < Heya::Campaigns::Base
  default from: "Josh from Honeybadger <support@heya.email>"

  segment { |u| u.confirmed_at? && !u.opted_out? }
end
