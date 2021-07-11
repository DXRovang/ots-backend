class InstrumentSerializer < ActiveModel::Serializer
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

end
