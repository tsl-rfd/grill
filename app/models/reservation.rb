class Reservation < ActiveRecord::Base
  attr_accessible :date, :hour, :party_size, :user_id
  
  belongs_to :user
end
