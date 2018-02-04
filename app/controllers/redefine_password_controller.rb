class RedefinePasswordController < ApplicationController

  # GET redefinir_senha_busca/busca
  def search
  end

  # POST  redefinir_senha_busca/busca
  def recuperar
    user = User.find_by(email: params[:user][:email])
    if user

        senha = Passgen::generate(:length => 6)
        user.password = senha
        user.password_confirmation = senha
        user.save

        UserMailer.forgot_password(user, senha).deliver_now
        flash[:notice] = "E-mail com instruções de recuperação enviado com êxito!"
        redirect_to login_path
    else
      flash.now[:alert] = "Membro não encontrado"
      render "search"
    end
  end

end
