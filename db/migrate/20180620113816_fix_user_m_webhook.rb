class FixUserMWebhook < ActiveRecord::Migration[5.2]
  def change
    change_table :m_webhooks do |t|
      t.rename :uer, :user
    end
  end
end
