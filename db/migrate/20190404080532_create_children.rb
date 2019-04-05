class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.references :marriage, foreign_key: true
      t.string :first_name
      t.string :middle_name
      t.date :birthday
      t.string :photo
      t.string :relation

      t.timestamps
    end
  end
end
