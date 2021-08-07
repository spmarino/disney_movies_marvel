class MovieDetailSerializer < ActiveModel::Serializer
  attributes :title, :release_date, :rating

  
  has_many :characters
  has_one :image
  
end
