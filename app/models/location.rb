class Location < ActiveRecord::Base
  attr_accessible :dragon_id, :moved_on, :room, :column, :row, :cage, :user_id

  validates_presence_of :moved_on
  validates_presence_of :room
  validates_presence_of :column
  validates_presence_of :row
  validates_presence_of :cage

  belongs_to :dragon

  belongs_to :user
  
  def short
    "#{room}#{column}#{row}#{cage}"
  end
end
