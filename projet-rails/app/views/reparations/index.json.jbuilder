json.array!(@reparations) do |reparation|
  json.extract! reparation, :id, :name, :prix
  json.url reparation_url(reparation, format: :json)
end
