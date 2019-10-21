class User < ApplicationRecord
  has_many :users_sessions
  has_many :sessions, through: :users_sessions

  

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
      "#{(self.total_time_run / self.total_distance).round(2)} Minutes per Mile"
    end
  end
end
