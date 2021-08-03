# frozen_string_literal: true

class Marvel < ApplicationRecord
  belongs_to :movie
  belongs_to :character
end
