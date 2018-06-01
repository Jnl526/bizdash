class UsersController < ApplicationController
  
  def index
    @users = User.all
 end
 
 def show
     @user = User.find(params[:id])
 end

 def edit
     @user = user.find(params[:id])
 end

 def update
     @user = user.find(params[:id])
     @user.update(user_params)
     redirect_to '/users'
 end

 

 def destroy
     user.find(params[:id]).destroy
     redirect_to '/user'
 end

 def new 
     @user = user.new
 end

 def create 
     User.create(user_params)
     redirect_to '/user'
 end

 private

def user_params
 params.require(:user).permit(:first_name, :last_name, :dob, :company, :company_logo, :password, :email)
end
end