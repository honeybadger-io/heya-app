class DropAhoyTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :ahoy_visits
    drop_table :ahoy_events
  end
end
