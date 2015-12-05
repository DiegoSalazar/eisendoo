json.array!(@quadrants) do |quadrant|
  json.extract! quadrant, :id
  json.url quadrant_url(quadrant, format: :json)
end
