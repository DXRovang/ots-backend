class InstrumentSerializer  < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  attributes :id, 
  :price, 
  :year, 
  :color, 
  :material, 
  :hole, 
  :neck, 
  :bridge, 
  :body, 
  :neck,
  :frets, 
  :description, 
  :user_id, 
  :maker_id,
  :family_id,
  :category_id

  belongs_to :user
  belongs_to :category
  belongs_to :maker
  belongs_to :family
end
