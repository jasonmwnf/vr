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
      format.json { render json: @videopics }
    end
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to admin_videos_path
      flash[:notice] = "Video has been created"
    else
      render :new
      flash["bg-warning"] = "Video has not been created please re-upload"
    end
  end

  def update
    @video = Video.friendly.find(params[:id])
    @video.update_attributes(video_params)
    redirect_to video_path(@video)
  end

  def destroy

  end

  private
    def video_params
      params.require(:video).permit!
    end
end
