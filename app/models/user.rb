class User < ApplicationRecord
  has_many :users_sessions
  has_many :sessions, through: :users_sessions

  has_secure_password


  def self.search(search)
    if search
      clean_name = search.downcase.capitalize
      user = User.find_by(name: clean_name)
      return [user]
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
