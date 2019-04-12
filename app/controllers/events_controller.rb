class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
    @events = Event.where(user_id: current_user.id)
  end
  def publicindex
    @events = Event.where.not(user_id: current_user.id, public: false)
  end
  def new
    @event = Event.new

  end
  def create
    @event = Event.new(event_parms)
    @event.user = current_user if current_user
    if @event.save
     redirect_to @event
    else
     render 'new'
    end
  end
  def show
  end
  def edit
  end
  private
  def set_event
    @event= Event.find(params[:id])
  end
  def event_parms
    params.require(:event).permit(:user_id, :name, :event_date, :event_picture_url, :descritption, :public)
  end
end
