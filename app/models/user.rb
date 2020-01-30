class User < ApplicationRecord
  include Heya::Concerns::Models::User

  mailkick_user

  default_segment { |u| !u.opted_out? }

  store_accessor :traits, :name

  validates :email, presence: true, format: /@/, uniqueness: true

  def first_name
    name.to_s.split(/\s+/).first.presence
  end
end
