class OrderItem < ActiveRecord::Base
  attr_accessible :note, :order_id, :qty, :item_id
  
  belongs_to :order
  belongs_to :item
  
end
