class CreateMuseums < ActiveRecord::Migration[7.0]
  def change
    create_table :museums do |t|
      t.references :prefecture, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.time :opening_at
      t.time :closing_at
      t.integer :closed_day
      
      t.timestamps
    end
  end
end
