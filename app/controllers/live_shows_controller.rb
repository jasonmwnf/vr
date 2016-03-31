require 'net/https'
require 'open-uri'

class LiveShowsController < ApplicationController

  def index
    @live_shows = LiveShow.all
    @recordings = LiveStreamRecording.all.order(date: 'DESC')
  end

  def credits
    binding.pry
    # get current_user get member_id, email
    # post, member_id_, email, pi_code, username( if necessary ) to
    # https://wnu.com/secure/services/?api=memberplus
  end
end
