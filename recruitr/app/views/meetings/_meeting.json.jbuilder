json.extract! meeting, :id, :title, :description, :starts_on, :ends_on, :participant_id, :recruiter_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
