class Admin::VideosController < AdminsController
  def index
    @videos = Video.all
  end

  def show

  end

  def new
    @video = Video.new

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

  private
end