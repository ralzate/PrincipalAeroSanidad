json.array!(@additional_informations) do |additional_information|
  json.extract! additional_information, :id, :analysis, :print_diagnosed, :plan_and_treatment, :observations_recommendations
  json.url additional_information_url(additional_information, format: :json)
end
