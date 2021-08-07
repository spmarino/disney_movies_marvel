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
require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
