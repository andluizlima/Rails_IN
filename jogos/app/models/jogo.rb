class Jogo < ActiveRecord::Base
    belongs_to :console
    has_many :user_jogos
end
