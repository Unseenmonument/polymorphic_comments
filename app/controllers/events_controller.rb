class EventsController < ApplicationController
  def new
    @event = Event.new

  end

  def edit
  end

  def show
    @event = Event.find(params[:id])
    @comments = Comment.all
  end
  
  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Tottle was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
  end
  
  private
    def event_params
      params.require(:event).permit(:name, :date, :location, :description)
    end
    
    
end
