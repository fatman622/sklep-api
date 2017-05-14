class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :telephone
  has_many :wares
end
