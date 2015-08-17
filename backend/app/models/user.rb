class User < ActiveRecord::Base
  has_many :joke

  enum :gender, %i(male, female)
end
