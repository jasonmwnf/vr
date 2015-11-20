class TourController < ApplicationController

  def index
    @videos = Video.friendly.all.order(id: 'DESC').limit(3)
    @events = Event.all.order(date: 'ASC').limit(3)
    @posts = Post.all.order(date: 'ASC').limit(3)
    @live_shows = LiveShow.all.order(date: 'ASC').limit(3)
    @future = UpcomingVideo.all
  end

end
