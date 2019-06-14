class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :email, null: false, index: true
      t.jsonb :traits, null: false, default: {}, index: true

      t.timestamps
    end
  end
end
