class Dragon < ActiveRecord::Base
  attr_accessible :id, :number, :clutch_id, :source_id, :group_id, :status_id, :male, :user_id

  validates_length_of :number, :minimum => 3

  belongs_to :clutch
  belongs_to :source
  belongs_to :status
  belongs_to :group
  
  belongs_to :user

  has_many :weights

  has_many :morphs
  has_many :treatments
  has_many :locations


  def clutches
    if self.male
      Clutch.find(:all, :conditions => {:m_dragon_id => self.id}, :order => "laid_on")
    else
      Clutch.find(:all, :conditions => {:f_dragon_id => self.id}, :order => "laid_on")
    end
  end
end
