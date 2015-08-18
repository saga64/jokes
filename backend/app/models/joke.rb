class Joke < ActiveRecord::Base
  belongs_to :user
  has_many :comment

  def self.latest(last_time_stamp)
    return self.last(25) unless last_time_stamp.present?

    where("created_at > ?", last_time_stamp).last(25)
  end
end
