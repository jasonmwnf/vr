class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:outcome, :account]
  def status
    User.create!(email: params[:email], password: params[:password], member_id: params[:order_id], amount: params[:amount])
    @user = User.find_by_email(params[:email])
    @user.member_id ||= params[:member_id]
    if params[:ans] =~ /[Y]/
      @user.update(is_paid: true)
    else
    end
  end

  def outcome
    if current_user.is_paid
      redirect_to users_account_path
    else
      redirect_to root_path
      flash["bg-warning"] = "You have not subscribed there was a problem with your credit card please try again."
    end
  end

  def account
  end
end