json.extract! pkmn, :id, :gen, :name, :typ1, :typ2, :created_at, :updated_at
json.url pkmn_url(pkmn, format: :json)
