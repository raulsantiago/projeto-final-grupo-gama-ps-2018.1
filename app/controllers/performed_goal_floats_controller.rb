class PerformedGoalFloatsController < ApplicationController
  before_action :set_performed_goal_float, only: [:show, :edit, :update, :destroy]

  # GET /performed_goal_floats
  # GET /performed_goal_floats.json
  def index
    @performed_goal_floats = PerformedGoalFloat.all
  end

  # GET /performed_goal_floats/1
  # GET /performed_goal_floats/1.json
  def show
  end

  # GET /performed_goal_floats/new
  def new
    @performed_goal_float = PerformedGoalFloat.new
  end

  # GET /performed_goal_floats/1/edit
  def edit
  end

  # POST /performed_goal_floats
  # POST /performed_goal_floats.json
  def create
    @performed_goal_float = PerformedGoalFloat.new(performed_goal_float_params)

    respond_to do |format|
      if @performed_goal_float.save
        format.html { redirect_to @performed_goal_float, notice: 'Performed goal float was successfully created.' }
        format.json { render :show, status: :created, location: @performed_goal_float }
      else
        format.html { render :new }
        format.json { render json: @performed_goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performed_goal_floats/1
  # PATCH/PUT /performed_goal_floats/1.json
  def update
    respond_to do |format|
      if @performed_goal_float.update(performed_goal_float_params)
        format.html { redirect_to @performed_goal_float, notice: 'Performed goal float was successfully updated.' }
        format.json { render :show, status: :ok, location: @performed_goal_float }
      else
        format.html { render :edit }
        format.json { render json: @performed_goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performed_goal_floats/1
  # DELETE /performed_goal_floats/1.json
  def destroy
    @performed_goal_float.destroy
    respond_to do |format|
      format.html { redirect_to performed_goal_floats_url, notice: 'Performed goal float was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performed_goal_float
      @performed_goal_float = PerformedGoalFloat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performed_goal_float_params
      params.require(:performed_goal_float).permit(:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :goal_float_id)
    end
end
