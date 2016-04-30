class Admin::UsersController < AdminsController
  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def edit
    find_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path
      flash[:notice] = "User Created Successfully"
    else
      render :new
      flash[:notice] = "User was not created please passwords dont match"
    end
  end

  def update
    find_user
    if @user.update_attributes(user_params)
      redirect_to admin_users_path
      flash[:notice] = "User added to room"
    else
      redirect_to admin_users_path
      flash[:notice] = "There was an error"
    end
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
