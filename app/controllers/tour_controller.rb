class TourController < ApplicationController

  def index
    @latest_videos = Video.latest_videos.limit(3)
    @events = Event.all.order(date: 'DESC').limit(3)
    @posts = Post.all.order(date: 'DESC').limit(3)
    @live_shows = LiveShow.all.order(date: 'DESC').limit(3)
    @upcoming_videos = Video.upcoming_videos.limit(3)
  end
end
