class ShadowNewsletterCampaign < Heya::Campaigns::Base
  default wait: 2.weeks, contact_class: "Contact"

  step :one,   subject: "First email subject", wait: 0.minutes
  step :two,   subject: "Second email subject"
  step :three, subject: "Third email subject"
end
