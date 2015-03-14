json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :age, :gender, :description, :interested_in, :tags, :picture
  json.url user_url(user, format: :json)
end
