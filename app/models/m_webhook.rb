class MWebhook < ApplicationRecord
  # Scopes
  # List of IPS => IP #1: 153.92.239.29 / IP #2 = 153.92.239.141
  scope :ip_1, lambda { where("m_webhooks.sending_ip = ?", "153.92.239.29") }
  scope :ip_2, lambda { where("m_webhooks.sending_ip = ?", "153.92.239.141") }
  scope :ip_3, lambda { where("m_webhooks.sending_ip = ?", "213.32.165.6") }
  scope :ip_4, lambda { where("m_webhooks.sending_ip = ?", "213.32.165.213") }
  scope :ip_5, lambda { where("m_webhooks.sending_ip = ?", "153.92.251.118") }
  scope :ip_6, lambda { where("m_webhooks.sending_ip = ?", "213.32.165.168") }
  # Lists ESPS => 'gmail' / 'hotmail' / 'yahoo' / 'bol' / 'others'
  scope :gmail, lambda { where("m_webhooks.esp LIKE ?", "gmail") }
  scope :hotmail, lambda { where("m_webhooks.esp LIKE ?", "hotmail") }
  scope :yahoo, lambda { where("m_webhooks.esp LIKE ?", "yahoo") }
  scope :bol, lambda { where("m_webhooks.esp LIKE ?", "bol") }
  scope :other, lambda { where("m_webhooks.esp NOT LIKE ?
    AND m_webhooks.esp NOT LIKE ?
    AND m_webhooks.esp NOT LIKE ?",
    "gmail", "hotmail", "yahoo" ) }
  # Ordering
  scope :desc, lambda { order("m_webhooks.date_event DESC") }
  
  # Lists Event types => "clicked", "opened"...
  scope :total_sent, lambda { where("m_webhooks.event LIKE ?
    OR m_webhooks.event LIKE ?
    OR m_webhooks.event LIKE ?",
    "delivered", "Hard_bounce", "Soft_bounce" ) }
  scope :unique_opened, lambda { where("m_webhooks.event LIKE ?", "opened").pluck('email').uniq}
  scope :opened, lambda { where("m_webhooks.event LIKE ?", "opened") }
  scope :clicked, lambda { where("m_webhooks.event LIKE ?", "click") }
  scope :unique_click, lambda { where("m_webhooks.event LIKE ?", "click").pluck('email').uniq}
  
  # Limiting
  scope :ten, lambda { limit (10)}

  # end of Ruby Class
end
