json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :description, :location, :rating
  json.url artist_url(artist, format: :json)
end
