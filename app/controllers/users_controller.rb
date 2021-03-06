class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :user_nao_logado, except: [:new, :create]
  before_action :user_logado, only: [:new, :create]
  before_action :user_correto, only: [:edit, :update]

  # PATCH buscateams
  def buscateams
    team = Team.find_by(id: params[:team])
    @result = []
    if team
      teams.each do |team|
      @result.append team
    end
  end
      respond_to do |format|
        format.json { render json: @result }
    end
  end


  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @offices1 = Office.where('user_id = ?', @user.id)
    @offices = Office.all
    @teams = Team.all
    #@notifications = Notifications.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
        flash[:notice] = "Bem vindo à IN"
        log_in @user
    else
        flash.now[:notice] = "Algo errado aconteceu."
        render "new"
    end

    puts @user.errors.full_messages
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    #@user = User.find params[:id]
    if @user.update_attributes(user_params)
      redirect_to show_user_path(id: @user.id)
    else
      render "edit"
    end
  end

  def update_team
  #  @user = params[team.user.index_users_on_team_id]
  #  @user.save
  #  redirect_to show_user_path(id: @user.id)
    #if @user.update_attributes(team_params)
    #   @user.save
    #  redirect_to show_user_path(id: @user.id)
    #else
    #  render "show"
    #end
    #puts @user.errors.full_messages
  end



  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if @user.destroy
      redirect_to index_user_path
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :team_id, :notification_id)
  end

  def user_correto
    if current_user != @user
      flash[:alert] = "Não permitido"
      redirect_to show_user_path(id: current_user.id)
    end
  end

end
