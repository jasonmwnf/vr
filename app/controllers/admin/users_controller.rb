class Admin::UsersController < AdminsController
  def index
    @users = User.all
  end

  def show

  end

  def edit
    find_user
  end

  def create
    @user = User.new(user_params)

  end

  def update
    find_user
  end

  def destroy
    find_user
  end

  private

  def find_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit!
  end
end