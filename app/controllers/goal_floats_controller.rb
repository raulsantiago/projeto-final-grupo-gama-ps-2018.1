class GoalFloatsController < ApplicationController
  before_action :set_goal_float, only: [:show, :edit, :update, :destroy]

  # GET /goal_floats
  # GET /goal_floats.json
  def index
    @goal_floats = GoalFloat.all
  end

  # GET /goal_floats/1
  # GET /goal_floats/1.json
  def show
  end

  # GET /goal_floats/new
  def new
    @goal_float = GoalFloat.new
  end

  # GET /goal_floats/1/edit
  def edit
  end

  # POST /goal_floats
  # POST /goal_floats.json
  def create
    @goal_float = GoalFloat.new(goal_float_params)

    respond_to do |format|
      if @goal_float.save
        format.html { redirect_to @goal_float, notice: 'Goal float was successfully created.' }
        format.json { render :show, status: :created, location: @goal_float }
      else
        format.html { render :new }
        format.json { render json: @goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_floats/1
  # PATCH/PUT /goal_floats/1.json
  def update
    respond_to do |format|
      if @goal_float.update(goal_float_params)
        format.html { redirect_to @goal_float, notice: 'Goal float was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_float }
      else
        format.html { render :edit }
        format.json { render json: @goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_floats/1
  # DELETE /goal_floats/1.json
  def destroy
    @goal_float.destroy
    respond_to do |format|
      format.html { redirect_to goal_floats_url, notice: 'Goal float was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_float
      @goal_float = GoalFloat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_float_params
      params.require(:goal_float).permit(:name_goal_float, :year_goal_float)
    end
end
