class Joke < ActiveRecord::Base
  belongs_to :user
  has_many :comment

  def self.latest(last_time_stamp = 0)
    where("created_at > ?", last_time_stamp).limit(25)
  end
end
