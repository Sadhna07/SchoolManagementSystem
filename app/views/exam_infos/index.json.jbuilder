json.array!(@exam_infos) do |exam_info|
  json.extract! exam_info, :id, :exam_id, :exam_name, :class_id
  json.url exam_info_url(exam_info, format: :json)
end
