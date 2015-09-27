json.array!(@buisnesses) do |buisness|
  json.extract! buisness, :id, :name, :location, :products
  json.url buisness_url(buisness, format: :json)
end
