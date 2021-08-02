class Movie < ApplicationRecord
  belongs_to :gender
  has_many :marvels
  has_many :characters, through: :marvels

    validates :title, presence: true, uniqueness:true
    validates :release_date, presence: true
    validates :rating, presence: true
end
