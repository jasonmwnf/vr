class VideosController < ApplicationController
  def index

  end

  def show

  end

  def create

  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to root_path
  end

  private
    def video_params
      params.require(:video).permit!
    end

end