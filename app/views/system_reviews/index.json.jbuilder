json.array!(@system_reviews) do |system_review|
  json.extract! system_review, :id, :cardiovascular, :cardiovascular_description, :respiratory, :abdominal, :abdominal_description, :genito_urinario, :genito_urinario_description, :neurological, :neurological_description, :mental, :mental_description, :sense_organ, :sense_organ_description, :skeletal_muscle, :skeletal_muscle_description, :skin_and_appendages, :skin_and_appendages_description
  json.url system_review_url(system_review, format: :json)
end
