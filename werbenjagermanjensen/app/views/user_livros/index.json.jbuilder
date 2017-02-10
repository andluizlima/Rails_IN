json.array!(@user_livros) do |user_livro|
  json.extract! user_livro, :id, :user_id, :livro_id
  json.url user_livro_url(user_livro, format: :json)
end
