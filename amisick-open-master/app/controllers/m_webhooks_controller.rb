class MWebhooksController < ApplicationController
  before_action :set_m_webhook, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session

  def sib_webhook
    # If the body contains the Hook id parameter...
    if params[:id].present?
      # Checks which event is being passed and handles it accordingly
      case params[:event]
      when "delivered"
        # Find the DomainInfo
        ip = params[:sending_ip]
        domain = DomainInfo.find_by(sending_ip: ip)
        # Creates hook attached to DomainInfo
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = params[:event]
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date_sent]
        hook.date_event = params[:date_event]
        hook.ts_event = params[:ts_event]
        hook.tag = params[:tag]
        hook.ts_sent = params[:ts_sent]
        hook.sending_ip = params[:sending_ip]
        # Fetch ESP attribute
        w = hook
        email = hook['email']
        split = email.split('@')
        split2 = split[1].split('.')
        w.esp = split2[0]
        w.save
        #
        hook.save!
        # Creates a duplicate with event: "sent"
        sent = domain.m_webhooks.new(hook_id: params[:id], event: "sent", email: params[:email], camp_id: params[:camp_id], campaign_name: params[:'campaign name'],date_sent: params[:date_sent], date_event: params[:date_event], ts_event: params[:ts_event], tag: params[:tag], ts_sent: params[:ts_sent], sending_ip: params[:sending_ip], esp: hook[:esp])
        sent.save!
      when "soft_bounce"
        # Find the DomainInfo
        ip = params[:sending_ip]
        domain = DomainInfo.find_by(sending_ip: ip)
        # Creates hook attached to DomainInfo
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = params[:event]
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date_sent]
        hook.date_event = params[:date_event]
        hook.ts_event = params[:ts_event]
        hook.tag = params[:tag]
        hook.ts_sent = params[:ts_sent]
        hook.sending_ip = params[:sending_ip]
        hook.reason = params[:reason]
        # Fetch ESP attribute
        w = hook
        email = hook['email']
        split = email.split('@')
        split2 = split[1].split('.')
        w.esp = split2[0]
        w.save
        #
        hook.save!
        # Creates a duplicate with event: "sent"
        sent = domain.m_webhooks.new(hook_id: params[:id], event: "sent", email: params[:email], camp_id: params[:camp_id], campaign_name: params[:'campaign name'],date_sent: params[:date_sent], date_event: params[:date_event], ts_event: params[:ts_event], tag: params[:tag], ts_sent: params[:ts_sent], sending_ip: params[:sending_ip], esp: hook[:esp])
        sent.save!
      when "hard_bounce"
        # Find the DomainInfo
        ip = params[:sending_ip]
        domain = DomainInfo.find_by(sending_ip: ip)
        # Creates hook attached to DomainInfo
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = params[:event]
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date_sent]
        hook.date_event = params[:date_event]
        hook.ts_event = params[:ts_event]
        hook.tag = params[:tag]
        hook.ts_sent = params[:ts_sent]
        hook.sending_ip = params[:sending_ip]
        hook.reason = params[:reason]
        # Fetch ESP attribute
        w = hook
        email = hook['email']
        split = email.split('@')
        split2 = split[1].split('.')
        w.esp = split2[0]
        w.save
        #
        hook.save!
        # Creates a duplicate with event: "sent"
        sent = domain.m_webhooks.new(hook_id: params[:id], event: "sent", email: params[:email], camp_id: params[:camp_id], campaign_name: params[:'campaign name'],date_sent: params[:date_sent], date_event: params[:date_event], ts_event: params[:ts_event], tag: params[:tag], ts_sent: params[:ts_sent], sending_ip: params[:sending_ip], esp: hook[:esp])
        sent.save!
      when "opened"
        # Find delivered webhook for the same user
        sent_webhook = MWebhook.find_by(email: params[:email], event: "sent", camp_id: params[:camp_id], date_sent: params[:date_sent])
        ip = sent_webhook.sending_ip
        # Find the DomainInfo
        domain = DomainInfo.find_by(sending_ip: ip)
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = params[:event]
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date_sent]
        hook.date_event = params[:date_event]
        hook.ts_event = params[:ts_event]
        hook.tag = params[:tag]
        hook.ts_sent = params[:ts_sent]
        hook.sending_ip = ip
        # Fetch ESP attribute
        w = hook
        email = hook['email']
        split = email.split('@')
        split2 = split[1].split('.')
        w.esp = split2[0]
        w.save
        #
        hook.save!
      when "click"
        # Find delivered webhook for the same user
        sent_webhook = MWebhook.find_by(email: params[:email], event: "sent", camp_id: params[:camp_id], date_sent: params[:date_sent])
        ip = sent_webhook.sending_ip
        # Find the DomainInfo
        domain = DomainInfo.find_by(sending_ip: ip)
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = params[:event]
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date_sent]
        hook.date_event = params[:date_event]
        hook.ts_event = params[:ts_event]
        hook.tag = params[:tag]
        hook.ts_sent = params[:ts_sent]
        hook.sending_ip = ip
        # Fetch ESP attribute
        w = hook
        email = hook['email']
        split = email.split('@')
        split2 = split[1].split('.')
        w.esp = split2[0]
        w.save
        #
        hook.save!
      when "spam"
        # Find delivered webhook for the same user
        sent_webhook = MWebhook.find_by(email: params[:email], event: "sent", camp_id: params[:camp_id], date_sent: params[:date_sent])
        ip = sent_webhook.sending_ip
        # Find the DomainInfo
        domain = DomainInfo.find_by(sending_ip: ip)
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = params[:event]
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date_sent]
        hook.date_event = params[:date_event]
        hook.ts_event = params[:ts_event]
        hook.tag = params[:tag]
        hook.ts_sent = params[:ts_sent]
        hook.reason = params[:reason]
        hook.sending_ip = ip
        # Fetch ESP attribute
        w = hook
        email = hook['email']
        split = email.split('@')
        split2 = split[1].split('.')
        w.esp = split2[0]
        w.save
        #
        hook.save!
      when "unsubscribe"
        # Find delivered webhook for the same user
        sent_webhook = MWebhook.find_by(email: params[:email], event: "sent", camp_id: params[:camp_id], date_sent: params[:date_sent])
        ip = sent_webhook.sending_ip
        # Find the DomainInfo
        domain = DomainInfo.find_by(sending_ip: ip)
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = params[:event]
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date_sent]
        hook.date_event = params[:date_event]
        hook.ts_event = params[:ts_event]
        hook.tag = params[:tag]
        hook.ts_sent = params[:ts_sent]
        hook.sending_ip = ip
        # Fetch ESP attribute
        w = hook
        email = hook['email']
        split = email.split('@')
        split2 = split[1].split('.')
        w.esp = split2[0]
        w.save
        #
        hook.save!
      end
    else
      # What to do if it fails...
    end
    # We don't render anything
    render :nothing => true
    # end of method
  end

  # GET /m_webhooks
  # GET /m_webhooks.json
  def index
    start_date = Date.today - 10.days
    end_date = Date.today
    date_range = (end_date - start_date).to_i
    @date_list = []
    date_range.times do |n|
      @date_list << start_date + n.days
    end

    @senders = Sender.all
    @m_list_of_ips = []
    @senders.each do |sender|
      sender.domain_infos.each do |domain_info|
        @m_list_of_ips << domain_info['sending_ip']
      end
    end

    @count_array = []
    this_event = params[:event] || "opened"
    @event_list = [this_event,"sent"]
    @esp_list = ["gmail","hotmail","yahoo","other"]
    @esp_list.each_with_index do |esp, esp_index|
      @count_array[esp_index] = []
      2.times do |j|
        @count_array[esp_index][j] = MWebhook.where("date_sent > ? AND date_sent < ?", start_date.to_date, end_date.to_date)
                            .send(esp).send(@event_list[j])
                            .group('date_sent', 'sending_ip').count
      end
    end
    # End of Index method
  end

  # GET /m_webhooks/1
  # GET /m_webhooks/1.json
  def show
  end

  # GET /m_webhooks/new
  def new
    @m_webhook = MWebhook.new
  end

  # GET /m_webhooks/1/edit
  def edit
  end

  # POST /m_webhooks
  # POST /m_webhooks.json
  def create
    @m_webhook = MWebhook.new(m_webhook_params)

    respond_to do |format|
      if @m_webhook.save
        format.html { redirect_to @m_webhook, notice: 'M webhook was successfully created.' }
        format.json { render :show, status: :created, location: @m_webhook }
      else
        format.html { render :new }
        format.json { render json: @m_webhook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_webhooks/1
  # PATCH/PUT /m_webhooks/1.json
  def update
    respond_to do |format|
      if @m_webhook.update(m_webhook_params)
        format.html { redirect_to @m_webhook, notice: 'M webhook was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_webhook }
      else
        format.html { render :edit }
        format.json { render json: @m_webhook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_webhooks/1
  # DELETE /m_webhooks/1.json
  def destroy
    @m_webhook.destroy
    respond_to do |format|
      format.html { redirect_to m_webhooks_url, notice: 'M webhook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_webhook
      @m_webhook = MWebhook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_webhook_params
      params.require(:m_webhook).permit(:event, :email, :hook_id, :camp_id, :campaign_name, :date_sent, :date_event, :ts_event, :ts_sent, :tag, :url, :sending_ip, :esp, :uer, :reason, :ts, :origin_id, :list_id)
    end

    def find_perc(a, b)
      ((1000 * a.to_f / b).ceil / 10.0) if b != 0
    end

    def set_sub_count_hash(thip) {
      gmail_hooks: {opened: a = thip.gmail.opened.size, total_sent: b = thip.gmail.total_sent.size, perc_opened: find_perc(a, b)},
      hotmail_hooks: {opened: a = thip.hotmail.opened.size, total_sent: b = thip.hotmail.total_sent.size, perc_opened: find_perc(a, b)},
      yahoo_hooks: {opened: a = thip.yahoo.opened.size, total_sent: b = thip.yahoo.total_sent.size, perc_opened: find_perc(a, b)},
      other_hooks: {opened: a = thip.other.opened.size, total_sent: b = thip.other.total_sent.size, perc_opened: find_perc(a, b)},
     }
    end

end
