class CreateMarriages < ActiveRecord::Migration[5.2]
  def change
    create_table :marriages do |t|
      t.references :male, foreign_key: true
      t.references :female, foreign_key: true
      t.string :anniversary
      t.string :photo
      t.string :timezone, default: "Central Time (US & Canada)"

      t.timestamps
    end
  end
end
