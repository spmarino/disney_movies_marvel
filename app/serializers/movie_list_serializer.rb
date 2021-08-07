class MovieListSerializer < ActiveModel::Serializer
    attributes :title, :release_date
    has_one :image
  end
  