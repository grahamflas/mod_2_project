class User < ApplicationRecord
  has_many :users_sessions
  has_many :sessions, through: :users_sessions

  has_secure_password


  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.search(search)
    if search
      clean_name = search.values.first.downcase.capitalize
      if search.keys.first == "first_name"
        user = User.where(first_name: clean_name)
      elsif search.keys.first == "last_name"
        user = User.where(last_name: clean_name)
      elsif search.keys.first == "full_name"
        names = clean_name.split
        last = names[1].capitalize
        user = User.where(first_name: names[0], last_name: last)
      elsif search.keys.first == "username"
        user = User.where(username: search[:username])
      end
    else
      return User.all
    end
  end

  def total_distance
    distances = self.sessions.map{|session| session.distance}
    distances.sum.round(2)
  end

  def total_time_run
    duration = self.sessions.map{|session| session.duration}
    duration.sum.round(2)
  end

  def display_time_run
    if total_time_run >= 60
      hours = (total_time_run / 60).to_i
      minutes = ((hours % 1) * 60).to_i
      
      "#{hours} hours #{minutes} minutes"
    else
      "#{total_time_run.round} minutes"
    end
  end

  ## returns average pace of all sessions minutes per mile
  def average_pace
    if self.total_distance == 0
      "You have no sessions yet"
    else
      raw_pace = self.total_time_run / self.total_distance

      minutes = raw_pace.to_i
      seconds = ((raw_pace % 1) *60).to_i

      formatted_pace = "#{minutes}\'#{seconds}\""
    end
  end
end
