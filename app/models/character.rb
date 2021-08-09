# frozen_string_literal: true

# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  age        :integer
#  weight     :integer          not null
#  history    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Character < ApplicationRecord
  has_many :marvels, dependent: :destroy
  has_many :movies, through: :marvels
  has_one_attached :image

  validates :name, uniqueness: true
  validates :name, :age, :weight, :movies, :image, presence: true
  #validates :attachment, attached: true, content_type: %i[png jpg jpeg]

  delegate :url, to: :image, prefix: true

  scope :by_movies, ->(movies) { joins(:movies).where('movies.id IN(?)', movies) } 
  scope :by_name, ->(name) { where('name LIKE ?',"%#{name}%") } 
end
