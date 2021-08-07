class CharacterDetailSerializer < ActiveModel::Serializer
  attributes :name, :age, :weight, :history

  has_many :movies
  has_one :image
end
