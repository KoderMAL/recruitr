json.extract! participant, :id, :first_name, :last_name, :email, :social_media, :created_at, :updated_at
json.url participant_url(participant, format: :json)
