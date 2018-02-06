class ProjectionGoalIntsController < ApplicationController
  before_action :set_projection_goal_int, only: [:show, :edit, :update, :destroy]

  # GET /projection_goal_ints
  # GET /projection_goal_ints.json
  def index
    @projection_goal_ints = ProjectionGoalInt.all
  end

  # GET /projection_goal_ints/1
  # GET /projection_goal_ints/1.json
  def show
  end

  # GET /projection_goal_ints/new
  def new
    @projection_goal_int = ProjectionGoalInt.new
  end

  # GET /projection_goal_ints/1/edit
  def edit
  end

  # POST /projection_goal_ints
  # POST /projection_goal_ints.json
  def create
    @projection_goal_int = ProjectionGoalInt.new(projection_goal_int_params)

    respond_to do |format|
      if @projection_goal_int.save
        format.html { redirect_to @projection_goal_int, notice: 'Projection goal int was successfully created.' }
        format.json { render :show, status: :created, location: @projection_goal_int }
      else
        format.html { render :new }
        format.json { render json: @projection_goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projection_goal_ints/1
  # PATCH/PUT /projection_goal_ints/1.json
  def update
    respond_to do |format|
      if @projection_goal_int.update(projection_goal_int_params)
        format.html { redirect_to @projection_goal_int, notice: 'Projection goal int was successfully updated.' }
        format.json { render :show, status: :ok, location: @projection_goal_int }
      else
        format.html { render :edit }
        format.json { render json: @projection_goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projection_goal_ints/1
  # DELETE /projection_goal_ints/1.json
  def destroy
    @projection_goal_int.destroy
    respond_to do |format|
      format.html { redirect_to projection_goal_ints_url, notice: 'Projection goal int was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection_goal_int
      @projection_goal_int = ProjectionGoalInt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projection_goal_int_params
      params.require(:projection_goal_int).permit(:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :goal_int_id)
    end
end
