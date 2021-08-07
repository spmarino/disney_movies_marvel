class MovieSerializer::DetailSerializer < ActiveModel::Serializer
  attributes :title, :release_date, :rating, :image_url
  has_one :gender, serializer: GenderSerializer::ListSerializer
  has_many :characters, serializer: CharacterSerializer::ListSerializer
end
