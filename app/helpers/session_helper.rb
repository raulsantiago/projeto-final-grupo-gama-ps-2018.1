module SessionHelper

  def log_in(user)
    session[:user_id] = user.id
    redirect_to show_user_path(id: user.id)
  end

  def current_user
    nil || User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    redirect_to login_path
  end

  def user_logado
    if logged_in?
      redirect_to show_user_path(id: current_user.id)
    end
  end

  def user_nao_logado
    if !logged_in?
      redirect_to login_path
    end
  end

end
