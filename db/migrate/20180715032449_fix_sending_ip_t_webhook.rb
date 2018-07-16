class FixSendingIpTWebhook < ActiveRecord::Migration[5.2]
  def change
    change_table :t_webhooks do |t|
      t.rename :sendin_ip, :sending_ip
      t.rename :teplate_id, :template_id
    end
    
    add_reference  :t_webhooks, :sender
    add_reference  :t_webhooks, :domain_info
  end
end
