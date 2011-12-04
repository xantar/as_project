class Status < ActiveRecord::Base
  attr_accessible :name, :tracked, :fertile

  has_many :dragons
end
