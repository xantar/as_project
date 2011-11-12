class Weight < ActiveRecord::Base
  attr_accessible :dragon_id, :weighed_on, :weight, :weight_type_id, :user_id
end
