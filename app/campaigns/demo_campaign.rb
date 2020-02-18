class DemoCampaign < ApplicationCampaign
  step :intro, wait: 0.minutes,
               subject: "Here's your Heya demo"

  step :what_it_is,
    subject: "So what is Heya, anyway?"

  step :why_we_made_it,
    subject: "Why we made Heya"

  step :is_it_right,
    subject: "Is Heya right for you?"

  step :how_it_works,
    subject: "Heya may be cheaper, but is it really better?"

  step :everything_else,
    subject: "Heya keeps your priorities in order"

  step :outro,
    subject: "This is it for now..."
end
