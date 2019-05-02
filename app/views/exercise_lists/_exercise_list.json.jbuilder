json.extract! exercise_list, :id, :exercise_name, :bodypart, :created_at, :updated_at
json.url exercise_list_url(exercise_list, format: :json)
