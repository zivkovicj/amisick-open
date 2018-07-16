class Sender < ApplicationRecord
    has_many :domain_infos
    
    def ips_from_domain_infos
        domain_infos.map(&:sending_ip)    
    end
    
    def m_webhooks_for_sender
        MWebhook.where(:sending_ip => self.ips_from_domain_infos) 
    end
end
