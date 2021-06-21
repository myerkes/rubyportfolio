class PortfolioController < ApplicationController

    before_action :require_user, except: [:index, :show]

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
        @new_project = Project.new()
    end

    def create
        @project = Project.new(project_params)

        if @project.save
            redirect_to '/portfolio'
        else
            render 'new'
        end
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy

        redirect_to '/portfolio'
    end

    private
    def project_params
        params.require(:project).permit(:title, :description, :link, :picture)
    end
end
