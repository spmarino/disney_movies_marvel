# frozen_string_literal: true

# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Gender < ApplicationRecord
  has_many :movies
  has_one_attached :image

  validates :name, presence: true, uniqueness: true
  validates :image, presence:true

  delegate :url, to: :image, prefix: true
end
