class Admin::LiveShowsController < AdminsController
  def index
    @live_shows = LiveShow.all
  end

  def new
    @live_show = LiveShow.create
  end

  def create
    find_live_show
    @live_show.new(live_show_params)
    if @live_show.save
      redirect_to admin_live_shows_path
      flash[:notice] = "Live show created"
    else
      render :new
    end
  end

  def edit
    find_live_show
  end

  def update
    find_live_show
    @live_show.update_attributes(live_show_params)
    redirect_to admin_live_shows_path
    flash[:notice] = "Live show has been updated"
  end

  def destroy
    find_live_show
    @live_show.destroy
    redirect_to admin_live_shows_path
    flash[:notice] = "Live show has been deleted"
  end

  private

  def find_live_show
    @live_show = LiveShow.find(params[:id])
  end

  def live_show_params
    params.require(:live_show).permit!
  end

end