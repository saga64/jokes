class Joke < ActiveRecord::Base
  belongs_to :user
  belongs_to :joke
end
