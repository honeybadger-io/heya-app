class DemoCampaign < Heya::Campaigns::Base
  default wait: 2.minutes

  step :first, wait: 0.minutes,
               subject: "First Message"

  step :second,
    subject: "Second Message"

  step :third,
    subject: "Third Message"
end
