class Weight < ActiveRecord::Base
  attr_accessible :dragon_id, :weighed_on, :weight, :weight_type_id, :user_id

  belongs_to :dragon
  belongs_to :weight_type
  belongs_to :user
end
