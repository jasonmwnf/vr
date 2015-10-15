class TourController < ApplicationController

  def index
    @videos = Video.all.order(id: 'DESC').limit(3)
    @events = Event.all.order(date: 'ASC').limit(3)
    @future = Video.all
  end

end
