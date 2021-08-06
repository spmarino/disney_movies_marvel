# frozen_string_literal: true

class Movie < ApplicationRecord
  belongs_to :gender
  has_many :marvels
  has_many :characters, through: :marvels
  has_one_attached :image

  validates :title, presence: true, uniqueness: true
  validates :image, :rating, :release_date, :gender, presence: true
end
