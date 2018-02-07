class GoalIntsController < ApplicationController
  before_action :set_goal_int, only: [:show, :edit, :update, :destroy]
  before_action :user_nao_logado, except: [:new, :create]
  

  # GET /goal_ints
  # GET /goal_ints.json
  def index
    @goal_ints = GoalInt.all
  end

  # GET /goal_ints/1
  # GET /goal_ints/1.json
  def show
    @performed_goal_int = Performed_goal_int.all
    @projection_goal_int = Projection_goal_int.all
    @reached_goal_int = Reached_goal_int.all
  end

  # GET /report
  def report
    @goal_ints = GoalInt.all
  end


  # GET /goal_ints/new
  def new
    @goal_int = GoalInt.new
  end

  # GET /goal_ints/1/edit
  def edit
  end

  # POST /goal_ints
  # POST /goal_ints.json
  def create
    @goal_int = GoalInt.new(goal_int_params)

    respond_to do |format|
      if @goal_int.save
        format.html { redirect_to @goal_int, notice: 'Goal int was successfully created.' }
        format.json { render :show, status: :created, location: @goal_int }
      else
        format.html { render :new }
        format.json { render json: @goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_ints/1
  # PATCH/PUT /goal_ints/1.json
  def update
    respond_to do |format|
      if @goal_int.update(goal_int_params)
        format.html { redirect_to @goal_int, notice: 'Goal int was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_int }
      else
        format.html { render :edit }
        format.json { render json: @goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_ints/1
  # DELETE /goal_ints/1.json
  def destroy
    @goal_int.destroy
    respond_to do |format|
      format.html { redirect_to goal_ints_url, notice: 'Goal int was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_int
      @goal_int = GoalInt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_int_params
      params.require(:goal_int).permit(:name_goal_int, :year_goal_int)
    end




end
