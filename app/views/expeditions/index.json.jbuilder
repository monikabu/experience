json.array!(@expeditions) do |expedition|
  json.extract! expedition, :id, :title, :starting_point, :destination, :start_date, :end_datedatetime, :coment
  json.url expedition_url(expedition, format: :json)
end
