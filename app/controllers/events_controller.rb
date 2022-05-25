class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events
  end

  def show
    event = Event.find_by(id: params[:id])
    render json: event 
  end

  def create
   new_event = Event.create(event_params)

   if new_event.valid? 
   render json: new_event
   else 
   render json: { "errors": new_event.errors.full_messages} , status: :unprocessable_entity
   end
  end

   def show_category
    categories = Event.all.filter do |each_event|
      each_event.category == params[:category]
    end
    render json: categories
   end


  def destroy
    event_to_delete = Event.find_by(id: params[:id])
    event_to_delete.destroy 
    head :no_content
  end




  private

  def event_params #need to check formatting and syntaxing
    params.permit(:name , :location , :description, :attendance, :likes, :venue  , :price , :image, :category, )
  end

end


