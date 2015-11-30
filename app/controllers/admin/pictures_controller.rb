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
    @picture.image_url = params[:file]
    if @picture.image_url.present?
      @picture.save
      flash[:notice] = "Picture successfully saved."
    end
    # redirect_to edit_admin_video_path(@video)
  end

  def update
    @picture = Picture.friendly.find(params[:video])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
  end

  private

  def picture_params
    params.require(:picture).permit!
  end

  def find_video
    @video = Video.friendly.find(params[:video_id])
  end

end
