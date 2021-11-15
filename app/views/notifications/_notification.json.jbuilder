json.extract! notification, :id, :user_id, :message, :is_active, :created_at, :updated_at
json.url notification_url(notification, format: :json)
