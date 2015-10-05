json.array!(@arles) do |arl|
  json.extract! arl, :id, :name
  json.url arl_url(arl, format: :json)
end
