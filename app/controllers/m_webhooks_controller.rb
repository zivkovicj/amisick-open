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
    puts "!!!PARAMS!!!"
    puts params
    start_date_param = params[:start_date] || (Date.today - 10.days)
    start_date = start_date_param.to_date
    end_date_param = params[:end_date] || Date.today
    end_date = end_date_param.to_date
    date_range = (end_date - start_date).to_i + 1
    @date_list = []
    date_range.times do |n|
      @date_list << end_date - n.days
    end

    @senders = Sender.all
    @m_list_of_ips = []
    @senders.each do |sender|
      sender.domain_infos.each do |domain_info|
        @m_list_of_ips << domain_info['sending_ip']
      end
    end
    
    @count_array = []
    @this_event = params[:event] || "unique_opened"
    @event_list = [@this_event,"sent"]
    @esp_list = ["gmail","hotmail","yahoo","other"]
    @esp_list.each_with_index do |esp, esp_index|
      @count_array[esp_index] = []
      2.times do |j|
        @count_array[esp_index][j] = MWebhook.where("date_sent > ? AND date_sent < ?", start_date, end_date)
                            .send(esp).send(@event_list[j])
                            .group('date_sent', 'sending_ip').count
      end
    end
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

    
    
end
