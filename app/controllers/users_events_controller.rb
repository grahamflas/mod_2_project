class UsersEventsController < ApplicationController

    def create
        user = User.find(params[:user_id])
        event = Event.find(params[:event_id])
        UsersEvent.create(user_id: user.id, event_id: event.id)
        redirect_to event_path(event)
    end

    def destroy
        user = User.find(params[:user_id])
        event = Event.find(params[:event_id])
        UsersEvent.find_by(user_id: user.id, event_id: event.id).delete
        redirect_to event_path(event) 
    end


end
