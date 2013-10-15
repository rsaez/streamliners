json.array!(@findings) do |finding|
  json.extract! finding, :diagnosis_treatment, :faculty_signature, :faculty_sig_date
  json.url finding_url(finding, format: :json)
end