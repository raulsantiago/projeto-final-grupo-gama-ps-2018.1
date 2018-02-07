class SessionController < ApplicationController

  before_action :user_logado, only: [:new, :create]

  #GET Login
  def new
  end

  #POST Login
  def create
      user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
    else
      flash.now[:alert] = "Usuário ou senha incorretos"
      render "new"
    end
  end

  #DELETE Login
  def destroy
    log_out
  end

end
