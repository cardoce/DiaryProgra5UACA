class WelcomeController < ApplicationController
  def index
    @events = Event.where(user_id: current_user.id)
  end
  def login
  end
  def profile 
    @events = Event.where(user_id: current_user.id)
  end
end
