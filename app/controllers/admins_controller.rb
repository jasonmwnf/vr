class AdminsController < ApplicationController
  before_filter :authenticate_admin!

  def authenticate_admin!
    if current_user.present? && current_user.is_admin?
      redirect_to admin_path
    else
      redirect_to new_user_session_path
    end
  end
end