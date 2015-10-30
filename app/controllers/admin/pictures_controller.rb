class Admin::PicturesController < AdminsController
  before_filter :find_video
  def index

  end

  def show

  end

  def edit

  end

  def new
    @picture = @video.pictures.new
  end

  def create
    @picture = @video.pictures.new(picture_params)
    @picture.save
    redirect_to admin_videos_path
    flash[:success] = "Picture uploaded successfully"

  end

  def update
    @picture = Picture.friendly.find(params[:video])

  end

  def destroy
    @picture.destroy
    flash[:warning] = "Picture deleted successfully"
  end

  private

  def picture_params
    params.require(:picture).permit!
  end

  def find_video
    @video = Video.friendly.find(params[:video_id])
  end

end