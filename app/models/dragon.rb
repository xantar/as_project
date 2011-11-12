class Dragon < ActiveRecord::Base
  attr_accessible :number, :clutch_id, :source_id, :group_id, :status_id, :male, :user_id
end
