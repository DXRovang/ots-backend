class FamilySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :instruments
  has_many :users, through: :instruments
  has_many :makers, through: :instruments
  has_many :categories, through: :instruments
end
