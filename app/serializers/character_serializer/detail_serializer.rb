class CharacterSerializer::DetailSerializer < ActiveModel::Serializer
  attributes :name, :age, :weight, :history, :image_url
  has_many :movies, serializer: MovieSerializer::ListSerializer
end
