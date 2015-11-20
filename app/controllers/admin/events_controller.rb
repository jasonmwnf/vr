class Admin::EventsController < AdminsController
  def index
    @events = Event.all
  end

  def show

  end

  def edit
    find_event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    find_event
    @event.update(event_params)
    if @event.save
      redirect_to admin_events_path
    else
    end

  end

  def destroy
    find_event
    @event.destroy
    redirect_to admin_events_path
    flash[:notice] = "Event Deleted"
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit!
  end


end