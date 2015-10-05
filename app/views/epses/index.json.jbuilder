json.array!(@epses) do |eps|
  json.extract! eps, :id, :name
  json.url eps_url(eps, format: :json)
end
