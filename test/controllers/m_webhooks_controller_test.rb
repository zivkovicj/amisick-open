require 'test_helper'

class MWebhooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_webhook = m_webhooks(:one)
  end

  test "should get index" do
    get m_webhooks_url
    assert_response :success
  end

  test "should get new" do
    get new_m_webhook_url
    assert_response :success
  end

  test "should create m_webhook" do
    assert_difference('MWebhook.count') do
      post m_webhooks_url, params: { m_webhook: { camp_id: @m_webhook.camp_id, campaign_name: @m_webhook.campaign_name, date_event: @m_webhook.date_event, date_sent: @m_webhook.date_sent, email: @m_webhook.email, esp: @m_webhook.esp, event: @m_webhook.event, hook_id: @m_webhook.hook_id, list_id: @m_webhook.list_id, origin_id: @m_webhook.origin_id, reason: @m_webhook.reason, sending_ip: @m_webhook.sending_ip, tag: @m_webhook.tag, ts: @m_webhook.ts, ts_event: @m_webhook.ts_event, ts_sent: @m_webhook.ts_sent, uer: @m_webhook.uer, url: @m_webhook.url } }
    end

    assert_redirected_to m_webhook_url(MWebhook.last)
  end

  test "should show m_webhook" do
    get m_webhook_url(@m_webhook)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_webhook_url(@m_webhook)
    assert_response :success
  end

  test "should update m_webhook" do
    patch m_webhook_url(@m_webhook), params: { m_webhook: { camp_id: @m_webhook.camp_id, campaign_name: @m_webhook.campaign_name, date_event: @m_webhook.date_event, date_sent: @m_webhook.date_sent, email: @m_webhook.email, esp: @m_webhook.esp, event: @m_webhook.event, hook_id: @m_webhook.hook_id, list_id: @m_webhook.list_id, origin_id: @m_webhook.origin_id, reason: @m_webhook.reason, sending_ip: @m_webhook.sending_ip, tag: @m_webhook.tag, ts: @m_webhook.ts, ts_event: @m_webhook.ts_event, ts_sent: @m_webhook.ts_sent, uer: @m_webhook.uer, url: @m_webhook.url } }
    assert_redirected_to m_webhook_url(@m_webhook)
  end

  test "should destroy m_webhook" do
    assert_difference('MWebhook.count', -1) do
      delete m_webhook_url(@m_webhook)
    end

    assert_redirected_to m_webhooks_url
  end
end
