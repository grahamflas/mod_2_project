class EventsController < ApplicationController
    

    def index
        if params.keys.include?("search")
            return @events = Event.search(params[:search])
        else
            return @events = Event.all
        end
    end

    def show
        @event = Event.find(params[:id])
    end
end
