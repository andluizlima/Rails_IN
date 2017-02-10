json.array!(@user_jogos) do |user_jogo|
  json.extract! user_jogo, :id, :user_id, :jogo_id
  json.url user_jogo_url(user_jogo, format: :json)
end
