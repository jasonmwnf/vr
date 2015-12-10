class LiveShowsController < ApplicationController

  def index
    @live_shows = LiveShow.all
    @recordings = LiveStreamRecording.all
  end

end