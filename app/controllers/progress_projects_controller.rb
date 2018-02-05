class ProgressProjectsController < ApplicationController
  before_action :set_progress_project, only: [:show, :edit, :update, :destroy]

  # GET /progress_projects
  # GET /progress_projects.json
  def index
    @progress_projects = ProgressProject.all
  end

  # GET /progress_projects/1
  # GET /progress_projects/1.json
  def show
  end

  # GET /progress_projects/new
  def new
    @progress_project = ProgressProject.new
  end

  # GET /progress_projects/1/edit
  def edit
  end

  # POST /progress_projects
  # POST /progress_projects.json
  def create
    @progress_project = ProgressProject.new(progress_project_params)

    respond_to do |format|
      if @progress_project.save
        format.html { redirect_to @progress_project, notice: 'Progress project was successfully created.' }
        format.json { render :show, status: :created, location: @progress_project }
      else
        format.html { render :new }
        format.json { render json: @progress_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progress_projects/1
  # PATCH/PUT /progress_projects/1.json
  def update
    respond_to do |format|
      if @progress_project.update(progress_project_params)
        format.html { redirect_to @progress_project, notice: 'Progress project was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress_project }
      else
        format.html { render :edit }
        format.json { render json: @progress_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progress_projects/1
  # DELETE /progress_projects/1.json
  def destroy
    @progress_project.destroy
    respond_to do |format|
      format.html { redirect_to progress_projects_url, notice: 'Progress project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress_project
      @progress_project = ProgressProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progress_project_params
      params.require(:progress_project).permit(:origin_unity, :destiny_unity, :information, :date_send, :project_id)
    end
end
