class LiveStreamRecordingsController < ApplicationController
  def show
    @recording = LiveStreamRecording.find(params[:id])
  end


end