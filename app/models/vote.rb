class Vote < ActiveRecord::Base
  attr_accessible :count, :district_id

  #belongs_to :district, :primary_key => :district_id, :foreign_key => :id
  belongs_to :user
  belongs_to :district
  #has_and_belongs_to :votedistricts

end
