class Museum < ApplicationRecord
  # Properties
  # t.references :prefecture, null: false, foreign_key: true
  # t.string :name
  # t.string :address
  # t.time :opening_at
  # t.time :closing_at
  # t.integer :closed_day
  #
  # t.timestamps
  
  # Relations
  has_many :exhibitions
  belongs_to :prefecture
  
  enum closed_day: {
    sunday:    0,
    monday:    1,
    tuesday:   2,
    wednesday: 3,
    tursday:   4,
    friday:    5,
    saturday:  6
  }
end
