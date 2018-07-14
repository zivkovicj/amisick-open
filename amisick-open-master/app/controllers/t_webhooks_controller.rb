class TWebhooksController < ApplicationController
  before_action :set_t_webhook, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session

  def sib_webhook
    # If the body contains the Hook id parameter...
    if params[:id].present?
      # Checks which event is being passed and handles it accordingly
      case params[:event]
      when "request"
        # Find the DomainInfo
        ip = params[:sending_ip]
        domain = DomainInfo.find_by(sending_ip: ip)
        # Creates hook attached to DomainInfo
        hook = domain.m_webhooks.new(:hook_id => params[:id])
        hook.event = "sent"
        hook.email = params[:email]
        hook.camp_id = params[:camp_id]
        hook.campaign_name = params[:'campaign name']
        hook.date_sent = params[:date]
        hook.date_event = params[:date]
        hook.ts = params[:ts]
        hook.message_id = [:message_id]
        hook.ts_event = params[:ts_event]
        hook.subject = params[:subject]
        hook.tag = params[:tag]
        hook.sending_ip = params[:sending_ip]
        hook.ts_epoch = params[:ts_epoch]
        hook.template_id = params[:template_id]
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
    end
  end

  # GET /t_webhooks
  # GET /t_webhooks.json
  def index
    @t_webhooks = TWebhook.all
  end

  # GET /t_webhooks/1
  # GET /t_webhooks/1.json
  def show
  end

  # GET /t_webhooks/new
  def new
    @t_webhook = TWebhook.new
  end

  # GET /t_webhooks/1/edit
  def edit
  end

  # POST /t_webhooks
  # POST /t_webhooks.json
  def create
    @t_webhook = TWebhook.new(t_webhook_params)

    respond_to do |format|
      if @t_webhook.save
        format.html { redirect_to @t_webhook, notice: 'T webhook was successfully created.' }
        format.json { render :show, status: :created, location: @t_webhook }
      else
        format.html { render :new }
        format.json { render json: @t_webhook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_webhooks/1
  # PATCH/PUT /t_webhooks/1.json
  def update
    respond_to do |format|
      if @t_webhook.update(t_webhook_params)
        format.html { redirect_to @t_webhook, notice: 'T webhook was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_webhook }
      else
        format.html { render :edit }
        format.json { render json: @t_webhook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_webhooks/1
  # DELETE /t_webhooks/1.json
  def destroy
    @t_webhook.destroy
    respond_to do |format|
      format.html { redirect_to t_webhooks_url, notice: 'T webhook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_webhook
      @t_webhook = TWebhook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_webhook_params
      params.require(:t_webhook).permit(:user, :event, :email, :hook_id, :date, :ts, :message_id, :ts_event, :subject, :tag, :ts_epoch, :teplate_id, :sendin_ip, :url, :esp, :link, :desc, :reason)
    end
end
