
class UsersController < ApplicationController
  before_action :director_only, :except => :show

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless current_user.directeur?
      unless @user == current_user
        redirect_to root_path, :alert => "Access denied."
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(secure_params)
    if @user.save
      redirect_to root_path, :notice => "User Created."
    else
      render new#Pas mal sur que si le save plante, le render new va rien faire de bon...
    end
  end

  def update
    @user = User.find(params[:id])
    @roles = User.roles
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def director_only
    unless current_user.directeur?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def coordonateur_only
    unless current_user.directeur? || current_user.coordonateur?
      redirect_to root_path, :alert => "Access denied"
    end
  end

  def secure_params
    params.require(:user).permit(:email, :role, :password)
  end
end