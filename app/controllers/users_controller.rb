class UsersController < ApplicationController 

  skip_before_filter :require_login, only: [:index, :new, :create] 
 
  before_action :set_user, only: [:show, :edit, :update, :destroy] 
 
  def index 
   @users = User.search(params[:search], params[:page])
  end 

 
  def show 
  end 
 
  def new 
   @user = User.new 
  end 
 
  def edit 
  end 


def create
 @user = User.new(user_params) 
 render action: :new unless @user.save   
end 

def update
  render action: :edit unless @user.update_attributes(user_params) 
end 
 
def destroy 
     @user.destroy    
end 
 

private 
# Use callbacks to share common setup or constraints between actions. 
def set_user 
  @user = User.find(params[:id]) 
end 
 
# Never trust parameters from the scary internet, only allow the white list through. 
def user_params 
 params.require(:user).permit(:email, :password, :password_confirmation, :nombre, :documento, :rol) 
end 
   
end 