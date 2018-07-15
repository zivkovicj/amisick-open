class DomainInfo < ApplicationRecord
  belongs_to :sender
  has_many :m_webhooks
  has_many :t_webhooks

  accepts_nested_attributes_for :m_webhooks, allow_destroy: true
  accepts_nested_attributes_for :m_webhooks, allow_destroy: true
end
