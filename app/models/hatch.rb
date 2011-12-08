class Hatch < ActiveRecord::Base
  attr_accessible :clutch_id, :out_on, :hatchlings, :user_id

  validates_presence_of :out_on
  validates_presence_of :hatchlings

  belongs_to :clutch 
  belongs_to :user
end
