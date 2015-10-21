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
    @videopics = @video.pictures
  end

  def edit
    @video = Video.friendly.find(params[:id])
    @models = Model.all
    @videopics = @video.pictures.paginate(page: params[:page], per_page: 12).order(id: 'ASC')
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create

  end

  def update

  end

  def destroy

  end

  private
end