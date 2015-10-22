class Admin::EventsController < AdminsController
  def index
    @events = Event.all
  end

  def show

  end

  def edit
    @event = Event.find(params[:id])

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
    @event = Event.find(params[:id])
    @event.update(event_params)
    if @event.save
      redirect_to admin_events_path
    else
    end

  end

  def destroy

  end

  private

  def event_params
    params.require(:event).permit!
  end


end