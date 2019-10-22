class Session < ApplicationRecord
  has_many :users_sessions
  has_many :users, through: :users_sessions


  def self.search(search)
    if search
      user = User.find_by(name: search)
      return user
    end
  end

  ## returns duration of session in minutes
  def duration
    (self.end_time - self.start_time) / 60
  end

  def pace
    raw_pace = self.duration / self.distance

    minutes  = raw_pace.to_i
    seconds = ((raw_pace % 1) * 60).to_i

    formatted_pace = "#{minutes}\'#{seconds}\""
  end

  def runners
    self.users.map{|user| user.name}
  end
end
