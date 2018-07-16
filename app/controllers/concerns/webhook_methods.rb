module WebhookMethods
    extend ActiveSupport::Concern
    
    def set_dates
        start_date_param = params[:start_date] || (Date.today - 10.days)
        @start_date = start_date_param.to_date
        end_date_param = params[:end_date] || Date.today
        @end_date = end_date_param.to_date
        date_range = (@end_date - @start_date).to_i + 1
        @date_list = []
        date_range.times do |n|
          @date_list << @end_date - n.days
        end
    end
    
    def set_ip_list
        sender_id = params[:sender].to_i || 0
        @senders = Sender.all
        @senders = [Sender.find(sender_id)] if sender_id > 0
        
        temp_list = []
        @senders.each do |sender|
            sender.domain_infos.each do |domain_info|
                temp_list << domain_info['sending_ip']
            end
        end
        @m_list_of_ips = temp_list.uniq
    end
    
end