json.extract! personal_info, :id, :heigth, :weigth, :person_id, :created_at, :updated_at
json.url personal_info_url(personal_info, format: :json)