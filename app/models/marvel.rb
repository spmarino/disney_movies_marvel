# frozen_string_literal: true

# == Schema Information
#
# Table name: marvels
#
#  id           :integer          not null, primary key
#  movie_id     :integer          not null
#  character_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Marvel < ApplicationRecord
  belongs_to :movie
  belongs_to :character
end
