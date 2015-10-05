json.array!(@departments) do |department|
  json.extract! department, :id, :name, :country_id
  json.url department_url(department, format: :json)
end
