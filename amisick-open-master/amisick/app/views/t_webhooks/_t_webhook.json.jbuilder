json.extract! t_webhook, :id, :user, :event, :email, :hook_id, :date, :ts, :message_id, :ts_event, :subject, :tag, :ts_epoch, :teplate_id, :sendin_ip, :url, :esp, :link, :desc, :reason, :created_at, :updated_at
json.url t_webhook_url(t_webhook, format: :json)
