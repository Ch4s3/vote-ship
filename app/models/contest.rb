class Contest < ActiveRecord::Base
  def index
  end

  def show
    @contest = Contest.find(params[:id])
    @projects = @contest.projects
  end
end
