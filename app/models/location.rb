class Location < ActiveRecord::Base
  attr_accessible :dragon_id, :moved_on, :room, :column, :row, :cage, :user_id

  belongs_to :dragon

  belongs_to :user
  
  def short
    "#{room}#{column}#{row}#{cage}"
  end
end
