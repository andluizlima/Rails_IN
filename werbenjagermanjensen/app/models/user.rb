class User < ActiveRecord::Base
  has_secure_password
  has_many :user_livros, dependent: :destroy
  before_save {self.nome = nome.downcase }
end
