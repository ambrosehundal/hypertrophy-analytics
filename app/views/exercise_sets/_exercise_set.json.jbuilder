json.extract! exercise_set, :id, :weight_lbs, :reps, :previous, :notes, :created_at, :updated_at
json.url exercise_set_url(exercise_set, format: :json)
