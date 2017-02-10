class Livro < ActiveRecord::Base
  has_many :user_livros
end
