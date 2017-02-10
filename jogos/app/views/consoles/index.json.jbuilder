json.array!(@consoles) do |console|
  json.extract! console, :id, :nome, :midia, :preco, :fabricante, :lancamento
  json.url console_url(console, format: :json)
end
