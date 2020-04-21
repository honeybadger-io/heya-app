# Preview all emails at http://localhost:3000/rails/mailers/digest_mailer
class DemoCampaignPreview < ActionMailer::Preview
  def intro
    DemoCampaign.intro(user)
  end

  def what_it_is
    DemoCampaign.what_it_is(user)
  end

  def why_we_made_it
    DemoCampaign.why_we_made_it(user)
  end

  def is_it_right
    DemoCampaign.is_it_right(user)
  end

  def how_it_works
    DemoCampaign.how_it_works(user)
  end

  def everything_else
    DemoCampaign.everything_else(user)
  end

  def outro
    DemoCampaign.outro(user)
  end

  private

  def user
    User.where(id: params[:user_id]).first || User.first
  end
end
