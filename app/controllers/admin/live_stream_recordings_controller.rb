class Admin::LiveStreamRecordingsController < AdminsController

  def index
    @recordings = LiveStreamRecording.all
  end

  def show
    find_stream
  end

  def new
    @recording = LiveStreamRecording.new
  end

  def create
    @recording = LiveStreamRecording.new(recording_params)
    if @recording.save
      redirect_to admin_live_stream_recordings_path
      flash[:notice] = "Recording Created"
    else
      render :new
      flash[:notice] = "There was an error, please try again."
    end
  end

  def edit
    find_stream
  end

  def update
    find_stream
    @recording.update_attributes(recording_params)
    redirect_to admin_live_stream_recordings_path
    flash[:notice] = "Recording Updated"
  end

  def delete
    find_stream
    @recording.destroy
    redirect_to admin_live_stream_recordings_path
    flash[:notice] = "Recording deleted"
  end

  private

  def find_stream
    @recording = LiveStreamRecording.find(params[:id])
  end

  def recording_params
    params.require(:live_stream_recording).permit!
  end
end