class TWebhook < ApplicationRecord
    
    scope :gmail, lambda { where("t_webhooks.esp LIKE ?", "gmail") }
    scope :hotmail, lambda { where("t_webhooks.esp LIKE ?", "hotmail") }
    scope :yahoo, lambda { where("t_webhooks.esp LIKE ?", "yahoo") }
    scope :other, lambda { where("t_webhooks.esp NOT LIKE ?
        AND t_webhooks.esp NOT LIKE ?
        AND t_webhooks.esp NOT LIKE ?",
        "gmail", "hotmail", "yahoo" ) }
        
    # Lists Event types => "clicked", "opened"...
    scope :sent, lambda { where("t_webhooks.event LIKE ?" ,"sent") }
    scope :unique_opened, lambda { where("t_webhooks.event LIKE ?", "unique_opened")}
    scope :opened, lambda { where("t_webhooks.event LIKE ?", "opened") }
    scope :clicked, lambda { where("t_webhooks.event LIKE ?", "click") }
    scope :unique_click, lambda { where("t_webhooks.event LIKE ?", "click").select("DISTINCT email")}
    scope :delivered, lambda { where("t_webhooks.event LIKE ?", "delivered")}
end
