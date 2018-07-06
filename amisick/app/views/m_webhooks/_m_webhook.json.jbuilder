json.extract! m_webhook, :id, :event, :email, :hook_id, :camp_id, :campaign_name, :date_sent, :date_event, :ts_event, :ts_sent, :tag, :url, :sending_ip, :esp, :uer, :reason, :ts, :origin_id, :list_id, :created_at, :updated_at
json.url m_webhook_url(m_webhook, format: :json)
