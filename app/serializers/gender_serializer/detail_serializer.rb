class GenderSerializer::DetailSerializer < ActiveModel::Serializer
  attributes :name, :image_url

  has_many :movies, serializer: MovieSerializer::ListSerializer
end
