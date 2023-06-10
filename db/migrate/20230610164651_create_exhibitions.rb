class CreateExhibitions < ActiveRecord::Migration[7.0]
  def change
    create_table :exhibitions do |t|
      t.references :museum, null: false, foreign_key: true
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.string :url

      t.timestamps
    end
  end
end
