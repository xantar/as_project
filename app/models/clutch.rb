class Clutch < ActiveRecord::Base
  attr_accessible :laid_on, :viable, :questionable, :total, :m_dragon_id, :f_dragon_id, :comments, :user_id

  belongs_to :user
  belongs_to :dragon, :class_name => "m_dragon" 
  belongs_to :dragon, :class_name => "f_dragon"

  has_many :dragons
  has_many :hatches
end
