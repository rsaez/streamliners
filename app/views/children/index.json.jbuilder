json.array!(@children) do |child|
  json.extract! child, :name, :school, :gender, :DOB, :age, :address, :no_parent_present, :parental_permission_given, :allergies, :allergies_info, :immunization_review, :relevant_information
  json.url child_url(child, format: :json)
end