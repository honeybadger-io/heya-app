class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, index: {unique: true}
      t.jsonb :traits, null: false, default: {}, index: true

      t.timestamps
    end
  end
end
