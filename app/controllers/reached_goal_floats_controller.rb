class ReachedGoalFloatsController < ApplicationController
  before_action :set_reached_goal_float, only: [:show, :edit, :update, :destroy]
  before_action :user_nao_logado, except: [:new, :create]


  # GET /reached_goal_floats
  # GET /reached_goal_floats.json
  def index
    @reached_goal_floats = ReachedGoalFloat.all
  end

  # GET /reached_goal_floats/1
  # GET /reached_goal_floats/1.json
  def show
  end

  # GET /reached_goal_floats/new
  def new
    @reached_goal_float = ReachedGoalFloat.new
  end

  # GET /reached_goal_floats/1/edit
  def edit
  end

  # POST /reached_goal_floats
  # POST /reached_goal_floats.json
  def create
    @reached_goal_float = ReachedGoalFloat.new(reached_goal_float_params)

    respond_to do |format|
      if @reached_goal_float.save
        format.html { redirect_to @reached_goal_float, notice: 'Reached goal float was successfully created.' }
        format.json { render :show, status: :created, location: @reached_goal_float }
      else
        format.html { render :new }
        format.json { render json: @reached_goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reached_goal_floats/1
  # PATCH/PUT /reached_goal_floats/1.json
  def update
    respond_to do |format|
      if @reached_goal_float.update(reached_goal_float_params)
        format.html { redirect_to @reached_goal_float, notice: 'Reached goal float was successfully updated.' }
        format.json { render :show, status: :ok, location: @reached_goal_float }
      else
        format.html { render :edit }
        format.json { render json: @reached_goal_float.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reached_goal_floats/1
  # DELETE /reached_goal_floats/1.json
  def destroy
    @reached_goal_float.destroy
    respond_to do |format|
      format.html { redirect_to reached_goal_floats_url, notice: 'Reached goal float was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reached_goal_float
      @reached_goal_float = ReachedGoalFloat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reached_goal_float_params
      params.require(:reached_goal_float).permit(:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :goal_float_id)
    end



end
