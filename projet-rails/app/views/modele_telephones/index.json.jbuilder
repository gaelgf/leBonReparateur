json.array!(@modele_telephones) do |modele_telephone|
  json.extract! modele_telephone, :id, :nom
  json.url modele_telephone_url(modele_telephone, format: :json)
end
