class VideosController < ApplicationController
  def index
    @latest_vid = Video.latest_videos.order(post_date: 'DESC').first
    @models     = @latest_vid.models
    @more_vids  = Video.latest_videos.order(post_date: 'DESC')
    @upcoming_videos = Video.upcoming_videos.order(post_date: 'DESC')
  end

  def new
  end

  def upload
    aws_upload_for params[:video]

    render json: upload_response, content_type: request.format
  end

  def show
    if user_signed_in?
      @video = find_video
      @videopics = @video.pictures.order(created_at: "ASC").paginate(:page => params[:page], :per_page => 8)
      # .paginate(page: params[:page], per_page: 12).order(id: 'ASC')
      respond_to do |format|
        format.html
        format.js
      end
    else
      redirect_to videos_path
      flash[:notice] = "To view other videos please sign up"
    end
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end


end
