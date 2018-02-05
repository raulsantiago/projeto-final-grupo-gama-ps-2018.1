class ReachedGoalIntsController < ApplicationController
  before_action :set_reached_goal_int, only: [:show, :edit, :update, :destroy]

  # GET /reached_goal_ints
  # GET /reached_goal_ints.json
  def index
    @reached_goal_ints = ReachedGoalInt.all
  end

  # GET /reached_goal_ints/1
  # GET /reached_goal_ints/1.json
  def show
  end

  # GET /reached_goal_ints/new
  def new
    @reached_goal_int = ReachedGoalInt.new
  end

  # GET /reached_goal_ints/1/edit
  def edit
  end

  # POST /reached_goal_ints
  # POST /reached_goal_ints.json
  def create
    @reached_goal_int = ReachedGoalInt.new(reached_goal_int_params)

    respond_to do |format|
      if @reached_goal_int.save
        format.html { redirect_to @reached_goal_int, notice: 'Reached goal int was successfully created.' }
        format.json { render :show, status: :created, location: @reached_goal_int }
      else
        format.html { render :new }
        format.json { render json: @reached_goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reached_goal_ints/1
  # PATCH/PUT /reached_goal_ints/1.json
  def update
    respond_to do |format|
      if @reached_goal_int.update(reached_goal_int_params)
        format.html { redirect_to @reached_goal_int, notice: 'Reached goal int was successfully updated.' }
        format.json { render :show, status: :ok, location: @reached_goal_int }
      else
        format.html { render :edit }
        format.json { render json: @reached_goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reached_goal_ints/1
  # DELETE /reached_goal_ints/1.json
  def destroy
    @reached_goal_int.destroy
    respond_to do |format|
      format.html { redirect_to reached_goal_ints_url, notice: 'Reached goal int was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reached_goal_int
      @reached_goal_int = ReachedGoalInt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reached_goal_int_params
      params.require(:reached_goal_int).permit(:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :goal_int_id)
    end
end
