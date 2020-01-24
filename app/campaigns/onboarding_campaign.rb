class OnboardingCampaign < Heya::Campaigns::Base
  step :first, wait: 0.minutes,
    subject: "First Message"

  step :second,
    subject: "Second Message"

  step :third,
    subject: "Third Message"
end
