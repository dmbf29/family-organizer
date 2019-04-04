class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :type
      t.bigint :user_id
      t.integer :timing_number
      t.string :timing_unit
      t.string :mode

      t.timestamps
    end
  end
end
