class Vote < ActiveRecord::Base
  attr_accessible :count, :district_id

  belongs_to :user
  belongs_to :district
  has_one :votedistrict, :through => :district

end
