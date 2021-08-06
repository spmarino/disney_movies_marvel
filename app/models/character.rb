# frozen_string_literal: true

class Character < ApplicationRecord
  has_many :marvels
  has_many :movies, through: :marvels
  has_one_attached :image

  validates :name, uniqueness: true
  validates :name, :age, :weight, :movies, :image, presence: true
end
