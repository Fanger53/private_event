class EventsController < ApplicationController
  before_action :set_event, only: %i[show destroy]
  def index 
    @events=Event.all
  end
  def new
    @event= current_user.events.build
  end
  def create
    @event = current_user.events.build(event_params)
    if @event.save 
      flash[:success]='event successfully created '
      redirect_to events_path
    else
      flash.now[:danger]='error with some fields'
      render 'new'
    end
  end
  def show
    @attendance=Attendance.new
    @event= Event.find(params[:id])
  end
  def destroy
    @event.destroy
    flash[:succes]="event destroyed successfuly"
    redirect_to root_path 
  end
  private
  def set_event
    @event = Event.find(params[:id])
  end
  def event_params
  params.require(:event).permit(:name,:description)
  end
end
