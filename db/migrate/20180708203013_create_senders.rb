class CreateSenders < ActiveRecord::Migration[5.2]
  def change
    create_table :senders do |t|
      t.string :from_name
      t.string :sign_domain
      t.string :from_email
      t.integer :sib_id
      t.integer :active
      t.text :domains_data

      t.timestamps
    end
  end
end
