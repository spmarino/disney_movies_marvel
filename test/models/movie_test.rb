require "test_helper"

class MovieTest < ActiveSupport::TestCase
  require "test_helper"

class MovieTest < ActiveSupport::TestCase

#  It must contain the complete fields

test "should have a title value" do
  movie = Movie.new(release_date:02-02-2020, rating: 1)
  assert_not movie.save
end

test "should have a release_date value" do
  movie = Movie.new(title:"Avengers", rating: 1)
  assert_not movie.save
end

test "should have a rating value" do
  movie = Movie.new(release_date:02-02-2020, title: "Avengers")
  assert_not movie.save
end

# The fields are correct you must pass the test

test'should save valid title, release_date and rating' do
  movie = Movie.new(title:"Avengers", release_date:02-02-2020, rating:5)
  assert movie.save
end

end

end
