class Character < ApplicationRecord
    has_many :marvels
    has_many :movies, through: :marvels

    validates :name, uniqueness:true
    validates :name, :age, :weight, :movies, presence: true
end
