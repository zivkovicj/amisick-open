class TWebhooksController < ApplicationController
  before_action :set_t_webhook, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session

  include WebhookMethods

  def sib_webhook
    # If the body contains the Hook id parameter...
  if params[:id].present?
    # Create a new Hook object based on the received parameters...
  hook = TWebhook.new(:hook_id => params[:id])
  if params[:event].present?
    hook.event = params[:event]
  end
  if params[:email].present?
    hook.email = params[:email]
  end
  if params[:date].present?
    hook.date = params[:date]
  end
  if params[:ts].present?
    hook.ts = params[:ts]
  end
  if params[:'message-id'].present?
    hook.message_id = params[:'message-id']
  end
  if params[:ts_event].present?
    hook.ts_event = params[:ts_event]
  end
  if params[:subject].present?
    hook.subject = params[:subject]
  end
  if params[:tag].present?
    hook.tag = params[:tag]
  end
  if params[:sending_ip].present?
    hook.sending_ip = params[:sending_ip]
  end
  if params[:ts_epoch].present?
    hook.ts_epoch = params[:ts_epoch]
  end
  if params[:template_id].present?
    hook.template_id = params[:template_id]
  end
  if params[:user].present?
    hook.user = params[:user]
  end
  if params[:url].present?
    hook.url = params[:url]
  end
  if params[:link].present?
    hook.link = params[:link]
  end
  if params[:desc].present?
    hook.desc = params[:desc]
  end
  if params[:reason].present?
    hook.reason = params[:reason]
  end
    w = hook
    email = hook['email']
    split = email.split('@')
    split2 = split[1].split('.')
    w.esp = split2[0]
    w.save
  hook.save!
  end
  # The webhook doesn't require a response but let's make sure
  # we don't send anything
  render :nothing => true
  end

  # GET /t_webhooks
  # GET /t_webhooks.json
  def index
    if params[:type] == "m_webhooks"
      redirect_to m_webhooks_path(:start_date => params[:start_date], :end_date => params[:end_date], :event => params[:event]) 
      return
    end
    
    set_dates
    set_ip_list
    
    @count_array = []
    @this_event = params[:event] || "unique_opened"
    @event_list = [@this_event,"sent"]
    @esp_list = ["gmail","hotmail","yahoo","other"]
    @esp_list.each_with_index do |esp, esp_index|
      @count_array[esp_index] = []
      2.times do |j|
        @count_array[esp_index][j] = TWebhook.where("date >= ? AND date <= ?", @start_date, @end_date)
                                      .send(esp).send(@event_list[j])
                                      .group('date', 'sending_ip').count
      end
    end
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
