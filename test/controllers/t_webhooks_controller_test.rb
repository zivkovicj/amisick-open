require 'test_helper'

class TWebhooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_webhook = t_webhooks(:one)
  end

  test "should get index" do
    get t_webhooks_url
    assert_response :success
  end

  test "should get new" do
    get new_t_webhook_url
    assert_response :success
  end

  test "should create t_webhook" do
    assert_difference('TWebhook.count') do
      post t_webhooks_url, params: { t_webhook: { date: @t_webhook.date, desc: @t_webhook.desc, email: @t_webhook.email, esp: @t_webhook.esp, event: @t_webhook.event, hook_id: @t_webhook.hook_id, link: @t_webhook.link, message_id: @t_webhook.message_id, reason: @t_webhook.reason, sendin_ip: @t_webhook.sendin_ip, subject: @t_webhook.subject, tag: @t_webhook.tag, teplate_id: @t_webhook.teplate_id, ts: @t_webhook.ts, ts_epoch: @t_webhook.ts_epoch, ts_event: @t_webhook.ts_event, url: @t_webhook.url, user: @t_webhook.user } }
    end

    assert_redirected_to t_webhook_url(TWebhook.last)
  end

  test "should show t_webhook" do
    get t_webhook_url(@t_webhook)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_webhook_url(@t_webhook)
    assert_response :success
  end

  test "should update t_webhook" do
    patch t_webhook_url(@t_webhook), params: { t_webhook: { date: @t_webhook.date, desc: @t_webhook.desc, email: @t_webhook.email, esp: @t_webhook.esp, event: @t_webhook.event, hook_id: @t_webhook.hook_id, link: @t_webhook.link, message_id: @t_webhook.message_id, reason: @t_webhook.reason, sendin_ip: @t_webhook.sendin_ip, subject: @t_webhook.subject, tag: @t_webhook.tag, teplate_id: @t_webhook.teplate_id, ts: @t_webhook.ts, ts_epoch: @t_webhook.ts_epoch, ts_event: @t_webhook.ts_event, url: @t_webhook.url, user: @t_webhook.user } }
    assert_redirected_to t_webhook_url(@t_webhook)
  end

  test "should destroy t_webhook" do
    assert_difference('TWebhook.count', -1) do
      delete t_webhook_url(@t_webhook)
    end

    assert_redirected_to t_webhooks_url
  end
end
