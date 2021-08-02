class Movie < ApplicationRecord
  belongs_to :gender

    validates :title, presence: true, uniqueness:true
    validates :release_date, presence: true
    validates :rating, presence: true
end
