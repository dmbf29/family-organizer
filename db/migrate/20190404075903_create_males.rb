class CreateMales < ActiveRecord::Migration[5.2]
  def change
    create_table :males do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :photo

      t.timestamps
    end
  end
end
