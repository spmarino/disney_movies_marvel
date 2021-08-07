class CharacterSerializer::ListSerializer < ActiveModel::Serializer
  attributes :name, :image_url
end
