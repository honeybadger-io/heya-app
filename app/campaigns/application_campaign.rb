class ApplicationCampaign < Heya::Campaigns::Base
  default from: "Josh from Honeybadger <support@heya.email>"

  segment { |u| !u.opted_out? }
end
