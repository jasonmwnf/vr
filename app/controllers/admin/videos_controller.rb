class Admin::VideosController < AdminsController
  def index
    @videos = Video.all.order(post_date: 'DESC')
  end

  def show
    @video = Video.friendly.find(params[:id])
  end

  def new
    @video = Video.new
    @videopics = @video.pictures
  end

  def edit
    @video = Video.friendly.find(params[:id])
    @videopics = @video.pictures.order(created_at: "ASC")
    # .paginate(page: params[:page], per_page: 12).order(id: 'ASC')
    respond_to do |format|
      format.html
      format.json { render json: @videopics }
    end
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to admin_videos_path
      flash[:notice] = "Video has been created"
    else
      flash[:notice] = "Do not forget the title"
      render :new
    end
  end

  def update
    @video = Video.friendly.find(params[:id])
    @video.update_attributes(video_params)
    redirect_to admin_videos_path
    flash[:notice] = "Video has been updated"
  end

  def destroy
    @video = Video.friendly.find(params[:id])
    @video.destroy
    redirect_to admin_videos_path
    flash[:notice] = "Video has been deleted"
  end

  private
    def video_params
      params.require(:video).permit!
    end
end
