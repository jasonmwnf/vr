class UsersController < ApplicationController
  def status
    @user = User.find_by_email(params[:email])
    @user.member_id ||= params[:member_id]
    @user.save

    if params[:ans] == "YGOODTEST|#{@user.member_id}"
      @user.update(is_paid: true)
      redirect_to videos_path
    else
      root_path
    end

  def panel

  end
  end
end