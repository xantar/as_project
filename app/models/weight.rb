class Weight < ActiveRecord::Base
  attr_accessible :dragon_id, :weighed_on, :weight, :weight_type_id, :user_id

  validates_presence_of :weighed_on
  validates_presence_of :weight

  belongs_to :dragon
  belongs_to :weight_type
  belongs_to :user
end
