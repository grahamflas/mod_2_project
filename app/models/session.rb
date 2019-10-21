class Session < ApplicationRecord
  has_many :users_sessions
  has_many :users, through: :users_sessions


  ## returns duration of session in minutes
  def duration
    (self.end_time - self.start_time) / 60
  end

  def pace
    (self.duration / self.distance).round(2)
  end
end
