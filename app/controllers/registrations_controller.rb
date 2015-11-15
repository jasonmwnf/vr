class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = 'Please try and subscribing first.'
    redirect_to root_path
  end

  def create
    flash[:info] = 'Please try and subscribing first.'
    redirect_to root_path
  end
end