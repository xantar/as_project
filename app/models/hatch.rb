class Hatch < ActiveRecord::Base
  attr_accessible :clutch_id, :out_on, :hatchlings, :user_id

  belongs_to :clutch 
  belongs_to :user
end
