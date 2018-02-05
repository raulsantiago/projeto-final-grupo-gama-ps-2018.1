json.extract! notification, :id, :name_notification, :text, :date_send, :created_at, :updated_at
json.url notification_url(notification, format: :json)
