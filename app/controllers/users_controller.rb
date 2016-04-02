class UsersController < ApplicationController
  def status
    create_user
    check_if_credit_card_approved
    render status: 200
  end

  def outcome
   @user = User.find_by_email(params[:email])
    if @user.email == User.last.email
      redirect_to new_user_session_path
      flash[:notice] = "Thank you for signing up."
    else
      new_user_account_error
    end
  end

  private

  def check_if_credit_card_approved
    if params[:ans] =~ /[Y]/
      @user.update(is_paid: true)
    else
    end
  end

  def create_user
    @user = User.create!(email: params[:email], password: params[:password], member_id: params[:order_id], amount: params[:amount], answer: params[:ans], username: params[:username])
  end

  def sign_in_last_created_user
    @user = User.last
    sign_in(@user)
  end

  def set_session_new_user
    session[:new_user] ||= params[:session_id]
  end

  def check_if_user_is_paid
    if current_user.is_paid?
      redirect_to users_account_path
      flash[:notice] = "Your account is now activated! Enjoy!"
    else
      new_user_account_error
    end
  end

  def new_user_account_error
    redirect_to root_path
    flash[:notice] = "There was an error with your account please try to subscribe again."
  end
end
