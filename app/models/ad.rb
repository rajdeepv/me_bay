class Ad < ActiveRecord::Base
  attr_accessible :name, :description, :price , :seller_id, :email, :img_url
end
