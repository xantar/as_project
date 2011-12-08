class Status < ActiveRecord::Base
  attr_accessible :name, :tracked, :fertile

  validates_presence_of :name

  has_many :dragons
end
