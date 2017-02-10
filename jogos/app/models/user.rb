class User < ActiveRecord::Base
  has_secure_password
  has_many :user_jogos
end
