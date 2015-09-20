class ContestController < ApplicationController
  def index
    @projects = Project.all.shuffle
  end
end
