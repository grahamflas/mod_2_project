class Event < ApplicationRecord
    has_many :users_events
    has_many :users, through: :users_events

    def self.search(search)
        if search
            if search.keys.first == "name"
                events = Event.where(name: search[:name])
            elsif search.keys.first == "min_miles_run"
                events = Event.where("min_miles_run >= ? ", search.values.first)
            elsif search.keys.first == "max_distance"
                events = Event.where("distance <= ?", search.values.first)
            elsif search.keys.first == "min_distance"
                events = Event.where("distance >= ?", search.values.first)
            end
        else
          return Event.all
        end
    end
end
