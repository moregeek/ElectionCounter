class Votedistrict < ActiveRecord::Base

  attr_accessible :votes_required, :name, :id

validates_uniqueness_of :name, :case_sensitive => false

  has_many :districts, :foreign_key => :votedistrict_id
  has_many :votes, :through => :districts

  # votes_required

  # number of votes per votedistrict
  def votes_reached
    self.votes.sum(:count)
  end

  def votes_reached_in_percent
    self.votes_required / 100 * self.votes_reached
  end

  #
  # returns the number of votes which are needed to reach the goal
  #
  def votes_left
    res = votes_required - votes_reached
    res = res < 0 ? 0 : res
    res
  end

  #
  # returns the percent of votes which are needed to reach the goal
  #
  def votes_left_percent
    #votes_left = self.votes_required / 100 * votes_left
    votes_required / 100 * votes_left
  end

  class << self

    # returns: number of votes needed for all votedistricts
    def votes_required
      self.sum(:goal_count)
    end

    # total votes for all votedistricts
    def total_votes_reached
      c = 0;
      self.all.each {|i| c += i.votes_reached }
      c  
    end

    def total_votes_reached_relative
      self.total_votes_reached
    end

  end
end
