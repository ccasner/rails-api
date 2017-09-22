class ChargeSerializer < ActiveModel::Serializer
  attributes :id, :location, :price, :date
end
