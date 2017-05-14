class WareSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :price
  has_many :profiles
end
