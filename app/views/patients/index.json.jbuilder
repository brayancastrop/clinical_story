json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :identification, :account_id
  json.url patient_url(patient, format: :json)
end
