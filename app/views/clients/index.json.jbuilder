json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :last_name, :phone_number, :email, :birthday
  json.url client_url(client, format: :json)
end
