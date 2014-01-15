json.array!(@stashes) do |stash|
  json.extract! stash, :id, :description
  json.url stash_url(stash, format: :json)
end
