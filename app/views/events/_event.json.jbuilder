json.extract! event, :id, :name, :desc, :event_date, :event_time, :street, :city, :state, :zip, :registration_start, :fee_adult, :fee_child, :fee_other, :created_at, :updated_at
json.url event_url(event, format: :json)