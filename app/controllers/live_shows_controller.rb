class LiveShowsController < ApplicationController

  def index
    @live_shows = LiveShow.all
    @recordings = LiveStreamRecording.all.order(date: 'DESC')
  end

  def credits
    binding.pry
  end

  private
end
