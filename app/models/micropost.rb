class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  belongs_to :user

  validates :content, :length => { :maximun => 140}
end
