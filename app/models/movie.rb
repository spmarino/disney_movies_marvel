# frozen_string_literal: true

# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string
#  release_date :date
#  rating       :integer
#  gender_id    :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Movie < ApplicationRecord
  belongs_to :gender
  has_many :marvels
  has_many :characters, through: :marvels
  has_one_attached :image

  validates :title, presence: true, uniqueness: true
  validates :image, :rating, :release_date, :gender, presence: true

  delegate :url, to: :image, prefix: true
end
