class User < ApplicationRecord
  include Hashid::Rails

  mailkick_user

  store_accessor :traits, :name

  validates :email, presence: true, format: /@/, uniqueness: true

  def first_name
    name.to_s.split(/\s+/).first.presence
  end
end
