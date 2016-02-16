json.array!(@attendence_infos) do |attendence_info|
  json.extract! attendence_info, :id, :student_id, :class_id, :status, :record_date
  json.url attendence_info_url(attendence_info, format: :json)
end
