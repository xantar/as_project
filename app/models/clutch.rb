class Clutch < ActiveRecord::Base
  attr_accessible :laid_on, :viable, :questionable, :total, :m_dragon_id, :f_dragon_id, :comments, :user_id

  belongs_to :user
  belongs_to :m_dragon, :class_name => "Dragon"
  belongs_to :f_dragon, :class_name => "Dragon"

  has_many :dragons
  has_many :hatches

  def name
    "#{Dragon.find(:first, :conditions => { :id => f_dragon_id}).number} on #{laid_on}"
  end
end
