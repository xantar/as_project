class Location < ActiveRecord::Base
  attr_accessible :dragon_id, :room, :column, :row, :user_id

  belongs_to :dragon

  belongs_to :user
end
