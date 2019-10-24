class Session < ApplicationRecord
  has_many :users_sessions
  has_many :users, through: :users_sessions

  validates :distance, presence: true

  ##Add validation to make sure User inputs distance value


  ## returns duration of session in minutes
  def duration
    (self.end_time - self.start_time) / 60
  end

  def display_duration
    if duration >= 60
      hours = (duration / 60)
      minutes = ((hours % 1)*60).to_i
      "#{hours.to_i} hours #{minutes} minutes"
    else
      "#{duration.to_i} minutes"
    end
  end

  def pace
    raw_pace = self.duration / self.distance

    minutes  = raw_pace.to_i
    seconds = ((raw_pace % 1) * 60).to_i

    formatted_pace = "#{minutes}\'#{seconds}\""
  end

  def runners
    self.users.map{|user| user.first_name}
  end
end
