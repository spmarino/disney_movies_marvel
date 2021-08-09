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
  has_many :marvels, dependent: :destroy
  has_many :characters, through: :marvels
  has_one_attached :image

  validates :title, presence: true, uniqueness: true
  validates :image, :rating, :release_date, :gender, presence: true
  #validates :attachment, attached: true, content_type: %i[png jpg jpeg]

  delegate :url, to: :image, prefix: true

 
  scope :by_title, ->(title) { where('title LIKE ?',"%#{title}%") } 
  scope :by_gender, ->(gender) { where(gender: gender) }
end
