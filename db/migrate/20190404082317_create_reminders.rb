class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :type
      t.references :user, polymorphic: true, index: true
      t.integer :timing_number
      t.string :timing_unit
      t.string :mode

      t.timestamps
    end
  end
end
