# == Schema Information
#
# Table name: genders
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class GenderTest < ActiveSupport::TestCase
  test "should have a name value" do
    gender = Gender.new()
    assert_not gender.save
  end

  # The fields are correct you must pass the test

test'should save valid name' do
  gender = Gender.new(name:"Drama")
  assert gender.save
end

end
