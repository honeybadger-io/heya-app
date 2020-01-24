class EvergreenCampaign < Heya::Campaigns::Base
  default wait: 2.weeks

  step :one,
    subject: "First email subject"

  step :two,
    subject: "Second email subject"

  step :three,
    subject: "Third email subject"
end
