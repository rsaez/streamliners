json.array!(@directories) do |directory|
  json.extract! directory, :last_name, :first_name
  json.url directory_url(directory, format: :json)
end