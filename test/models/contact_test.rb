require "test_helper"

class ContactTest < ActiveSupport::TestCase
  test "it can opt out" do
    contact = contacts(:one)

    refute contact.opted_out?

    contact.opt_out

    assert contact.opted_out?
  end

  test "excludes opt-outs from Heya segments" do
    contact = contacts(:one)

    segment = Contact.build_default_segment.where(id: contact)

    assert segment.exists?

    contact.opt_out

    refute segment.exists?
  end
end
