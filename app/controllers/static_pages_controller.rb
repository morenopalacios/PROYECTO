class StaticPagesController < ApplicationController
  
 before_filter :require_login, :except => [:home, :help, :contact, :about] 
   
    
  def home
  end

  def help
  end

  def contact
  end

  def about
  end
  def estadistica
     tipo = params[:grafica] if params[:grafica]
  end

  
end
