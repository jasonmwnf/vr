class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    "https://test.wnu.com/secure/services/?api=join&pi_code=cjuuci1p882368&reseller=a"
  end

end