json.array!(@student_infos) do |student_info|
  json.extract! student_info, :id, :student_id, :student_name, :referenced_class_id
  json.url student_info_url(student_info, format: :json)
end
