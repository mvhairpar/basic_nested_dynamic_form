json.array!(@parents) do |parent|
  json.extract! parent, :parent_name
  json.url parent_url(parent, format: :json)
end
