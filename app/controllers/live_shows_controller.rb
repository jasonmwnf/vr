class LiveShowsController < ApplicationController

  def index
    @live_shows = LiveShow.all
  end

end