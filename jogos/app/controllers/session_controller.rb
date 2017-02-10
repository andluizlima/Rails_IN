class SessionController < ApplicationController
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
    	
    redirect_to users_url
    
  end
  
  private
  
    def nao_logado
      if logged_in?
        redirect_to users_path, :notice => 'Você ja está logado'
      end
    end
end
