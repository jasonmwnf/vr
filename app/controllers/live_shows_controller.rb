class LiveShowsController < ApplicationController

  def index
    @live_shows = LiveShow.all
    @recordings = LiveStreamRecording.all.order(created_at: 'DESC')
  end

end
