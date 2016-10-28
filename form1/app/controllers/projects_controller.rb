class ProjectsController < ApplicationController
  def index
  	@project=Project.all
  end

  def new
  	@project=Project.new
  end
  def create
		
		@project=User.new(project_params)
		if @user.save
    redirect_to projects_list_path
   else
   render 'new'
end
def project_params
		params.require(:project).permit(:name,:duration,:teamsize,:cost,:domain)
	end
end
