class RegistrationsController < Devise::RegistrationsController
  def create
    super
    binding.pry
  end

  def method_name

  end


  protected

  # def after_sign_up_path_for(resource)
  #   redirect_to "https://test.wnu.com/secure/services/?api=join&pi_code=cjuuci1p882368&reseller=a" and return
  # end

end