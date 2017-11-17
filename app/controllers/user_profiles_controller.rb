class UserProfilesController < ApplicationController
  def edit

  end

  def update
    if current_user.user_profile.update(user_profile_params)
      redirect_to root_path, :notice => "User profile updated"
     else
       redirect_to root_path, :alert => "Failed to update profile"
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(:first_name, :last_name, :address, :organism_role,
      user_phone_attributes: [:cell_number, :home_number, :work_number],
      diploma_attributes: [:program_name, :institution_name, :address, :date_start, :date_end]
    )
  end
end
