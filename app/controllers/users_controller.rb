
class UsersController < ApplicationController
  before_action :coordonateur_and_up, :except => :show

  # def index
  #   @users = User.all
  # end
  #
  # def show
  #   @user = User.find(params[:id])
  #   unless current_user.directeur?
  #     unless @user == current_user
  #       redirect_to root_path, :alert => "Access denied."
  #     end
  #   end
  # end
  #
  # def new
  #   @user = User.new
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, :notice => "User Created."
    else
      redirect_to root_path, :alert => "Failed to create user."
    end

  end

  # def update
  #   @user = User.find(params[:id])
  #   @roles = User.roles
  #   if @user.update_attributes(user_params)
  #     redirect_to users_path, :notice => "User updated."
  #   else
  #     redirect_to users_path, :alert => "Unable to update user."
  #   end
  # end
  #
  # def destroy
  #  user = User.find(params[:id])
  #  user.destroy
  #  redirect_to users_path, :notice => "User deleted."
  # end

  private

  def director_only
    unless current_user.directeur?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def coordonateur_and_up
    if current_user.assistant?
      redirect_to root_path, :alert => "Access denied"
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, :role)
  end
end
