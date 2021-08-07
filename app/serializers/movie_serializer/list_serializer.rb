class MovieSerializer::ListSerializer < ActiveModel::Serializer
  attributes :title, :release_date, :image_url
end
