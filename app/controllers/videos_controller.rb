class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = find_video
  end

  private
    def find_video
      @video = Video.find(params[:id])
      @models = @video.models
    end

end