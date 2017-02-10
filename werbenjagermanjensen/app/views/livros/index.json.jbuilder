json.array!(@livros) do |livro|
  json.extract! livro, :id, :titulo, :autor, :qtdPaginas, :sinopse
  json.url livro_url(livro, format: :json)
end
