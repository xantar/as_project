class Dragon < ActiveRecord::Base
  attr_accessible :number, :clutch_id, :source_id, :group_id, :status_id, :male, :user_id

  validates_length_of :number, :minimum => 3

  belongs_to :clutch
  belongs_to :source
  belongs_to :status
  belongs_to :group
  
  belongs_to :user

  has_many :weights
  has_many :clutches
  has_many :morphs
end
