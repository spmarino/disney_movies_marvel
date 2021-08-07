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
  has_many :marvels
  has_many :movies, through: :marvels
  has_one_attached :image

  validates :name, uniqueness: true
  validates :name, :age, :weight, :movies, :image, presence: true

  delegate :url, to: :image, prefix: true
end
