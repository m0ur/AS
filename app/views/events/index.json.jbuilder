json.array!(@events) do |event|
  json.extract! event, :id, :category, :module, :date, :supervisor, :time, :duration
  json.url event_url(event, format: :json)
end
