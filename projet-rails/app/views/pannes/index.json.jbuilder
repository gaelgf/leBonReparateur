json.array!(@pannes) do |panne|
  json.extract! panne, :id, :nom, :description
  json.url panne_url(panne, format: :json)
end
