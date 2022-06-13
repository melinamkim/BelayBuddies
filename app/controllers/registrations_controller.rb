class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(resource)
      flash[:notice] = "Account succesfully updated"
      my_profile_path
  end
end
