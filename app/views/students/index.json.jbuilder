json.array!(@students) do |student|
  json.extract! student, :id, :event_id, :attendance_id
  json.url student_url(student, format: :json)
end
