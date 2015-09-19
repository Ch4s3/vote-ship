class ProjectsController < ApplicationController
  def index
  end

  def create
  end

  def show
  end

  def voting
    @projects = Project.all
    uuid = params[:uuid]
    @person = Person.where(uuid: uuid).first
  end

  def vote
    person = Person.find(projects_params[:person_id])
    if person.has_voted?
      flash[:note] = "You have already voted"
      redirct_to :root
    else
      project = project.find(projects_params(:project_id))
      person.vote_for
    end
  end

  private

  def projects_params
    params.require(:project).permit(:project_id, :person_id, :uuid)
  end
end
