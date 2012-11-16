class Reservation < ActiveRecord::Base
  attr_accessible :date, :hour, :party_size, :user_id
  
  belongs_to :user
  
  after_create :add_points_to_user
  after_destroy :remove_points_from_user
  
  def late_at_night?
    self.hour > 9
  end
  
  def remove_points_from_user
    self.user.points -= 10
    if self.user.points < 0
      self.user.points = 0
    end
    
    self.user.save
  end
  
  def add_points_to_user
    self.user.points += 10
    self.user.save
  end
  
end
