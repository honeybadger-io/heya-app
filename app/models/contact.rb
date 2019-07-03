class Contact < ApplicationRecord
  include Heya::Concerns::Models::Contact

  mailkick_user

  default_segment { not_opted_out }

  store_accessor :traits, :name

  def first_name
    name.to_s.split(/\s+/).first.presence
  end
end
