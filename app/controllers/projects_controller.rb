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
    if @person.nil?
      flash[:danger] = "This token is invalid"
      redirect_to :root
    elsif @person.has_voted?
      flash[:danger] = "You have already voted"
      redirect_to :root
    end
  end

  def vote
    uuid = params["uuid"]
    person = Person.where(uuid: uuid).first
    if person.has_voted?
      flash[:info] = "You have already voted"
      redirect_to :root
    else
      project = Project.find(params["project_id"])
      person.vote_for project
      flash[:success] = "Thanks for voting!"
      redirect_to :root
    end
  end
end
