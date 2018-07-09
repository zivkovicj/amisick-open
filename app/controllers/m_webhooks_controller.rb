class MWebhooksController < ApplicationController
  before_action :set_m_webhook, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session

  def sib_webhook
    # If the body contains the Hook id parameter...
      if params[:id].present?
        # Create a new Hook object based on the received parameters...
        hook = MWebhook.new(:hook_id => params[:id])
        if params[:user].present?
          hook.user = params[:user]
        end
        if params[:event].present?
          hook.event = params[:event]
        end
        if params[:email].present?
          hook.email = params[:email]
        end
        if params[:camp_id].present?
          hook.camp_id = params[:camp_id]
        end
        if params[:'campaign name'].present?
          hook.campaign_name = params[:'campaign name']
        end
        if params[:date_sent].present?
          hook.date_sent = params[:date_sent]
        end
        if params[:date_event].present?
          hook.date_event = params[:date_event]
        end
        if params[:ts_event].present?
          hook.ts_event = params[:ts_event]
        end
        if params[:tag].present?
          hook.tag = params[:tag]
        end
        if params[:ts_sent].present?
          hook.ts_sent = params[:ts_sent]
        end
        if params[:reason].present?
          hook.reason = params[:reason]
        end
        if params[:url].present?
          hook.url = params[:url]
        end
        if params[:ts].present?
          hook.string = params[:ts]
        end
        if params[:sending_ip].present?
          hook.sending_ip = params[:sending_ip]
        end
        if params[:origin_id].present?
          hook.origin_id = params[:origin_id]
        end
        if params[:list_id].present?
          hook.list_id = params[:list_id]
        end
        # Fetch ESP attribute
          w = hook
          email = hook['email']
          split = email.split('@')
          split2 = split[1].split('.')
          w.esp = split2[0]
          w.save
          #
          # Check event type in order to update :sending_ip for events "opened" and "click"
          case params[:event]
          when "opened"
            sent = MWebhook.find_by(email: params[:email], event: "delivered", camp_id: params[:camp_id], date_sent: params[:date_sent])
            hook.sending_ip = sent.sending_ip
          when "click"
            sent = MWebhook.find_by(email: params[:email], event: "delivered", camp_id: params[:camp_id], date_sent: params[:date_sent])
            hook.sending_ip = sent.sending_ip
          end
          #
          # Save webhook to database - Check if everything you wanted to do with the webhook is DONE!
        hook.save!
      end
      #
      # Check event type in order to create custom event type "sent"
      case params[:event]
      when "delivered"
        sent = MWebhook.new(hook_id: params[:id], user: params[:user], event: "sent", email: params[:email], camp_id: params[:camp_id], campaign_name: params[:'campaign name'],  date_sent: params[:date_sent], date_event: params[:date_event], ts_event: params[:ts_event], tag: params[:tag], ts_sent: params[:ts_sent], reason: params[:reason], url: params[:url], ts: params[:ts], sending_ip: params[:sending_ip], origin_id: params[:origin_id], list_id: params[:list_id])
        sent.save!
      when "soft_bounce"
        sent = MWebhook.new(hook_id: params[:id], user: params[:user], event: "sent", email: params[:email], camp_id: params[:camp_id], campaign_name: params[:'campaign name'],  date_sent: params[:date_sent], date_event: params[:date_event], ts_event: params[:ts_event], tag: params[:tag], ts_sent: params[:ts_sent], reason: params[:reason], url: params[:url], ts: params[:ts], sending_ip: params[:sending_ip], origin_id: params[:origin_id], list_id: params[:list_id])
        sent.save!
      when "hard_bounce"
        sent = MWebhook.new(hook_id: params[:id], user: params[:user], event: "sent", email: params[:email], camp_id: params[:camp_id], campaign_name: params[:'campaign name'],  date_sent: params[:date_sent], date_event: params[:date_event], ts_event: params[:ts_event], tag: params[:tag], ts_sent: params[:ts_sent], reason: params[:reason], url: params[:url], ts: params[:ts], sending_ip: params[:sending_ip], origin_id: params[:origin_id], list_id: params[:list_id])
        sent.save!
      end
      #
      # The webhook doesn't require a response but let's make sure
      # we don't send anything
      render :nothing => true
  end

  # GET /m_webhooks
  # GET /m_webhooks.json
  def index
    @m_webhooks = MWebhook.all
    @m_list_of_ips = @m_webhooks.pluck('sending_ip').uniq
    @event = params[:event] || "unique_opened"
    
    end_date = Date.today
    start_date = Date.today - 10.days
    date_range = (end_date - start_date).to_i
    @count_array = []
    date_range.times do |n|
      this_date = end_date - n.days
      today_hooks = MWebhook.where(:date_sent => this_date)
      @count_array[n] = {:this_date => this_date}
      @m_list_of_ips.each_with_index do |ip, index|
        thip = today_hooks.where(:sending_ip => ip)  #Stands for "Today Hooks ip"
        @count_array[n][index] = set_sub_count_hash(thip)
      end
    end
    
    #@m_opened_list_of_esps = m_opened.ip_5.pluck('esp').uniq
    #@all_opened = deliv_kpi(MWebhook.opened)
    #@all_opened = @m_opened.uniq {|date| date.date_event }
    @all_ip_5 = MWebhook.opened.ip_5.desc.uniq
    @esp_list = ["gmail","hotmail","yahoo","other"] 
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
      gmail_hooks: {opened: a = thip.gmail.send(@event).size, total_sent: b = thip.gmail.total_sent.size, perc_opened: find_perc(a, b)},
      hotmail_hooks: {opened: a = thip.hotmail.send(@event).size, total_sent: b = thip.hotmail.total_sent.size, perc_opened: find_perc(a, b)},
      yahoo_hooks: {opened: a = thip.yahoo.send(@event).size, total_sent: b = thip.yahoo.total_sent.size, perc_opened: find_perc(a, b)},
      other_hooks: {opened: a = thip.other.send(@event).size, total_sent: b = thip.other.total_sent.size, perc_opened: find_perc(a, b)},
     }
    end
    
    
end
