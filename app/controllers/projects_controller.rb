class ProjectsController < ApplicationController
  def index
      @projects = Project.all
  end
  
  def show
  end
  
  def new
  end
  
  private
  def set_project
      @project = Project.find(params[:id])
  end
  
  def project_params
      params.require(:project).permit(:name, :desc, tasks_attributes: [:id, :name])
  end
end
