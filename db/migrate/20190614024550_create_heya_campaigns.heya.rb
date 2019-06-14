# This migration comes from heya (originally 20190607005755)
class CreateHeyaCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :heya_campaigns do |t|
      t.string :name

      t.timestamps
    end
  end
end
