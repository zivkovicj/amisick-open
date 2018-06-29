class CreateMWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :m_webhooks do |t|
      t.string :event
      t.string :email
      t.bigint :hook_id
      t.bigint :camp_id
      t.string :campaign_name
      t.date :date_sent
      t.date :date_event
      t.bigint :ts_event
      t.bigint :ts_sent
      t.string :tag
      t.string :url
      t.cidr :sending_ip
      t.string :esp
      t.string :user
      t.string :reason
      t.string :ts
      t.bigint :origin_id
      t.bigint :list_id
      t.references :sender, index: true
      t.references :domain_info, index: true

      t.timestamps
    end
  end
end
