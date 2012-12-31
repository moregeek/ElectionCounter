class District < ActiveRecord::Base
  attr_accessible :name, :votedistrict_id, :districts_id

 # belongs_to :votedistrict, :primary_key => :votedistrict_id
 # has_many :votes

  belongs_to :votedistrict
#  has_and_belongs_to_many :votes
  has_many :votes

  def total_votes
    self.votes.sum(:count)
  end

end
