class RegistrationsController < Devise::RegistrationsController
  def create
    flash[:info] = 'Please try and subscribing first.'
    redirect_to root_path
  end
end