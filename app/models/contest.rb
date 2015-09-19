class Contest < ActiveRecord::Base
  def winner
    sorted_projects = self.projects.sort{|a,b| a.vote_count <=> b.vote_count}
    sorted_projects.first
  end
end
