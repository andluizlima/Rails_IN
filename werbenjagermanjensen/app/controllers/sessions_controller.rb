class SessionsController < ApplicationController
  before_action :logado, :only => [:new, :create]
  def new

  end

  def create
    user = User.find_by(nome: params[:session][:nome].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to users_path
  end
private
  def logado
    if logged_in?
      redirect_to users_path
    end
  end
end
