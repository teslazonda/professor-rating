json.extract! student_story, :id, :title, :text, :date, :created_at, :updated_at
json.url student_story_url(student_story, format: :json)
