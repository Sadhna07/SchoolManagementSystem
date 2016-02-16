json.array!(@subject_infos) do |subject_info|
  json.extract! subject_info, :id, :subject_id, :subject_name, :exam_id, :maximum_marks
  json.url subject_info_url(subject_info, format: :json)
end
