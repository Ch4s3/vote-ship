class Contest < ActiveRecord::Base
  has_many :projects

  def winner
    sorted_projects = self.projects.sort{|a,b| b.vote_count <=> a.vote_count}
    sorted_projects.first
  end
end
