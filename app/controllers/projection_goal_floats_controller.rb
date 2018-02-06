class ProjectionGoalFloatsController < ApplicationController
  before_action :set_projection_goal_float, only: [:show, :edit, :update, :destroy]
  before_action :user_nao_logado, except: [:new, :create]

  # GET /projection_goal_floats
  # GET /projection_goal_floats.json
  def index
    @projection_goal_floats = ProjectionGoalFloat.all
  end

  # GET /projection_goal_floats/1
  # GET /projection_goal_floats/1.json
  def show
  end

  # GET /projection_goal_floats/new
  def new
    @projection_goal_float = ProjectionGoalFloat.new
  end

  # GET /projection_goal_floats/1/edit
  def edit
  end

  # POST /projection_goal_floats
  # POST /projection_goal_floats.json
  def create
    @projection_goal_float = ProjectionGoalFloat.new(projection_goal_float_params)

    respond_to do |format|
      if @projection_goal_float.save
        format.html { redirect_to @projection_goal_float, notice: 'Projection goal float was successfully created.' }
        format.json { render :show, status: :created, location: @projection_goal_float }
      else
        format.html { render :new }
        format.json { render json: @projection_goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projection_goal_floats/1
  # PATCH/PUT /projection_goal_floats/1.json
  def update
    respond_to do |format|
      if @projection_goal_float.update(projection_goal_float_params)
        format.html { redirect_to @projection_goal_float, notice: 'Projection goal float was successfully updated.' }
        format.json { render :show, status: :ok, location: @projection_goal_float }
      else
        format.html { render :edit }
        format.json { render json: @projection_goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projection_goal_floats/1
  # DELETE /projection_goal_floats/1.json
  def destroy
    @projection_goal_float.destroy
    respond_to do |format|
      format.html { redirect_to projection_goal_floats_url, notice: 'Projection goal float was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection_goal_float
      @projection_goal_float = ProjectionGoalFloat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projection_goal_float_params
      params.require(:projection_goal_float).permit(:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :goal_float_id)
    end



end
