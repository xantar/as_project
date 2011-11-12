class Clutch < ActiveRecord::Base
  attr_accessible :laid_on, :viable, :questionable, :total, :m_dragon_id, :f_dragon_id, :comments, :user_id
end
