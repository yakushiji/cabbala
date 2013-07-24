json.array!(@karma_numbers) do |karma_number|
  json.extract! karma_number, :description, :number
  json.url karma_number_url(karma_number, format: :json)
end
