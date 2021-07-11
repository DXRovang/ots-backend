class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :instruments
  has_many :categories, through: :instruments
  has_many :makers, through: :instruments
  has_many :families, through: :instruments
end
