class Admin::VideosController < AdminsController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.friendly.find(params[:id])

  end

  def new
    @video = Video.new
    @models = Model.all
  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

  private
end