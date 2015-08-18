class User < ActiveRecord::Base
  has_secure_password
  has_many :joke

  enum gender: { male: 0, female: 1}
end
