class Contact < ApplicationRecord
  store_accessor :traits, :name

  def first_name
    name.to_s.split(/\s+/).first.presence
  end
end
