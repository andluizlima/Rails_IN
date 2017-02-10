json.array!(@users) do |user|
  json.extract! user, :id, :nome, :password_digest, :sexo
  json.url user_url(user, format: :json)
end
