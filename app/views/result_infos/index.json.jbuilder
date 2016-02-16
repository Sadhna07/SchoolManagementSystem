json.array!(@result_infos) do |result_info|
  json.extract! result_info, :id, :student_id, :exam_id, :subject_id, :marks_obtained
  json.url result_info_url(result_info, format: :json)
end
