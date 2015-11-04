class VideosController < ApplicationController
  def index
    @latest_vid = Video.last
    @models     = @latest_vid.models
    @more_vids  = Video.where.not(id: @latest_vid).order(id: 'DESC')
  end

  def show
    @video = find_video
    @videopics = @video.pictures
    # .paginate(page: params[:page], per_page: 12).order(id: 'ASC')
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
    def find_video
      @video = Video.find(params[:id])
    end

end