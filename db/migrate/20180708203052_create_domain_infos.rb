class CreateDomainInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :domain_infos do |t|
      t.integer :enabled
      t.string :smtp_domain
      t.integer :ref_id
      t.string :img_rd
      t.integer :weight
      t.cidr :sending_ip
      t.references :sender, foreign_key: :true

      t.timestamps
    end
  end
end
