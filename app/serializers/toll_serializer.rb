class TollSerializer < ActiveModel::Serializer
  attributes :id, :location, :price
end
