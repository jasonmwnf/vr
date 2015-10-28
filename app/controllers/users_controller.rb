class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:outcome, :account]
  def status
    @user = User.find_by_email(params[:email])
    @user.member_id ||= params[:member_id]
    if params[:ans] == "YGOODTEST|#{@user.member_id}"
      @user.update(is_paid: true)
    else
    end
  end

  def outcome
    redirect_to users_account_path
  end

  def account
  end
end