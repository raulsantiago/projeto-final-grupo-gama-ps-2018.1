class PerformedGoalIntsController < ApplicationController
  before_action :set_performed_goal_int, only: [:show, :edit, :update, :destroy]
  before_action :user_nao_logado, except: [:new, :create]

  # GET /performed_goal_ints
  # GET /performed_goal_ints.json
  def index
    @performed_goal_ints = PerformedGoalInt.all
  end

  # GET /performed_goal_ints/1
  # GET /performed_goal_ints/1.json
  def show
  end

  # GET /performed_goal_ints/new
  def new
    @performed_goal_int = PerformedGoalInt.new
  end

  # GET /performed_goal_ints/1/edit
  def edit
  end

  # POST /performed_goal_ints
  # POST /performed_goal_ints.json
  def create
    @performed_goal_int = PerformedGoalInt.new(performed_goal_int_params)

    respond_to do |format|
      if @performed_goal_int.save
        format.html { redirect_to @performed_goal_int, notice: 'Performed goal int was successfully created.' }
        format.json { render :show, status: :created, location: @performed_goal_int }
      else
        format.html { render :new }
        format.json { render json: @performed_goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performed_goal_ints/1
  # PATCH/PUT /performed_goal_ints/1.json
  def update
    respond_to do |format|
      if @performed_goal_int.update(performed_goal_int_params)
        format.html { redirect_to @performed_goal_int, notice: 'Performed goal int was successfully updated.' }
        format.json { render :show, status: :ok, location: @performed_goal_int }
      else
        format.html { render :edit }
        format.json { render json: @performed_goal_int.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performed_goal_ints/1
  # DELETE /performed_goal_ints/1.json
  def destroy
    @performed_goal_int.destroy
    respond_to do |format|
      format.html { redirect_to performed_goal_ints_url, notice: 'Performed goal int was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performed_goal_int
      @performed_goal_int = PerformedGoalInt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performed_goal_int_params
      params.require(:performed_goal_int).permit(:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :goal_int_id)
    end


end
