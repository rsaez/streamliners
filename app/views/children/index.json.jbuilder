json.array!(@children) do |child|
  json.extract! child, :name, :gender, :dob, :location, :age_years, :age_months, :age_total_months, :no_parent_present, :parental_permission_given, :allergies, :allergies_info, :immunization_utd, :dtap, :hib, :pneumovax, :hepa, :influenza, :mmr, :immunization_review, :relevant_information, :created_at, :updated_at
  json.url child_url(child, format: :json)
end