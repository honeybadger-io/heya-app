class User < ApplicationRecord
  include Heya::Concerns::Models::User

  mailkick_user

  default_segment {|u| !u.opted_out? }

  after_create_commit do
    OnboardingCampaign.add(self)
    EvergreenCampaign.add(self)
  end

  store_accessor :traits, :name

  def first_name
    name.to_s.split(/\s+/).first.presence
  end
end
