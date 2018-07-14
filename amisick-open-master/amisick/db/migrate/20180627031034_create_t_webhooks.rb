class CreateTWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :t_webhooks do |t|
      t.string :user
      t.string :event
      t.string :email
      t.bigint :hook_id
      t.date :date
      t.string :ts
      t.bigint :message_id
      t.bigint :ts_event
      t.string :subject
      t.string :tag
      t.bigint :ts_epoch
      t.bigint :teplate_id
      t.cidr :sendin_ip
      t.string :url
      t.string :esp
      t.string :link
      t.string :desc
      t.string :reason
      t.references :sender, index: true
      t.references :domain_info, index: true

      t.timestamps
    end
  end
end
