class UserSessionsController < ApplicationController 

  skip_before_filter :require_login, except: [:destroy] 
  
  def new 
     @user = User.new 
  end 
 
  def create 
     if @user = login(params[:email], params[:password]) 
       redirect_back_or_to(:home, notice: 'Bienvenido  a SANO '+ current_user.email) 
     else 
       flash.now[:alert] = 'Falló el ingreso' 
       render action: 'new' 
     end 
  end 
 
  def destroy 
     logout 
     redirect_to(root_url, notice: 'Desconectado!') 
  end 
 
end 
 
 
