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
    @video = Video.friendly.find(params[:id])
    @models = Model.all
  end

  def create

  end

  def update

  end

  def destroy

  end

  private
end