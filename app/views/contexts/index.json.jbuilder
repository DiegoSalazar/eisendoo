json.array!(@contexts) do |context|
  json.extract! context, :id, :name, :main
  json.url context_url(context, format: :json)
end
