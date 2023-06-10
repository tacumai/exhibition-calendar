class Museum < ApplicationRecord
  # Relations
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
