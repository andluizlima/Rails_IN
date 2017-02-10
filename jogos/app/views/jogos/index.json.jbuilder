json.array!(@jogos) do |jogo|
  json.extract! jogo, :id, :nome, :estilo, :preco, :produtora
  json.url jogo_url(jogo, format: :json)
end
