class Ad < ActiveRecord::Base
  validates_presence_of :name
  attr_accessible :name, :description, :price , :seller_id, :email, :img_url
end
