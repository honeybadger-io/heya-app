class DemoCampaign < Heya::Campaigns::Base
  default from: "Josh from Honeybadger <support@heya.email>",
          wait: 10.minutes

  step :intro, wait: 0.minutes,
               subject: "Here's your Heya demo"

  step :what_it_is,
    subject: "So what is Heya, anyway?"

  step :why_we_made_it,
    subject: "Why we made Heya"

  step :is_it_right,
    subject: "Is Heya right for you?"

  step :how_it_works,
    subject: "How does Heya work?"

  step :everything_else,
    subject: "Everything else you should know about Heya"

  step :outro,
    subject: "This is it for now..."
end
