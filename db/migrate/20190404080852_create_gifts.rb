class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :url
      t.references :child, foreign_key: true
      t.integer :birthday
      t.boolean :purchased

      t.timestamps
    end
  end
end
