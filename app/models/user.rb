class User < ActiveRecord::Base
  enum gender: [:male, :female]
  has_secure_password
end
