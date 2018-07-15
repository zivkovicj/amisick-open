class HardWorker
  require 'mailin'
  include Sidekiq::Worker

  def perform(*args)
    HardWorker.perform_async(sib_fetch)
    HardWorker.perform_async(fetch)
  end

  def sib_fetch
    sib = Mailin.new("#{ENV.fetch("SIB_API_URL")}","#{ENV.fetch("SIB_API_KEY")}")
    data = { "option" => "" }
    @response = sib.get_senders(data)
  end
  def fetch
    @response['data'].each do |sender|
      s = Sender.find_or_create_by(sib_id: sender['id'])
      s.update_attributes(
        from_name: sender['from_name'],
        sign_domain: sender['sign_domain'],
        from_email: sender['from_email'],
        active: sender['active'],
        sib_id: sender['id'],
        domains_data: sender['domains_data']
      )
      sender['domains_data'].each do |domain_data|
        s.domain_infos.find_or_create_by(ref_id: sender['id'], smtp_domain: domain_data['smtp_domain']).update_attributes(
          enabled: domain_data['enabled'],
          weight: domain_data['weight'],
          ref_id: domain_data['ref_id'],
          smtp_domain: domain_data['smtp_domain'],
          img_rd: domain_data['img_rd'],
          sending_ip: domain_data['ip']
        )
      end
    end
  end
end
