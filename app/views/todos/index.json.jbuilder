json.array!(@todos) do |todo|
  json.extract! todo, :id, :quadrant_id, :user_id, :body, :due, :notify, :recurring_rule
  json.url todo_url(todo, format: :json)
end
