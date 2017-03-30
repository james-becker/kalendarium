class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      p "Event saved!"
      redirect_to calendar_path
    else
      render :new
    end
  end

  def show(event) # Do we need (event) parameter?
    render locals: {
      event: event
    }
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to calendar_path, notice: 'Event was successfully saved.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to calendar_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :calendar_id, :start_time, :end_time)
  end

end
