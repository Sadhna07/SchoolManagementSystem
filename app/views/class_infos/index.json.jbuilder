json.array!(@class_infos) do |class_info|
  json.extract! class_info, :id, :class_id, :class_name, :maximum_limit
  json.url class_info_url(class_info, format: :json)
end
