json.array!(@notes) do |note|
  json.extract! note, :id, :content, :patient_id
  json.url note_url(note, format: :json)
end
