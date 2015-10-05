json.array!(@clinic_histories) do |clinic_history|
  json.extract! clinic_history, :id, :city, :department, :user_id, :cove, :mobiel_service, :airport, :type_service, :patient_id, :origin, :destination, :company, :accompanist_name, :relationship, :phone, :reason_for_consultation, :current_illness
  json.url clinic_history_url(clinic_history, format: :json)
end
