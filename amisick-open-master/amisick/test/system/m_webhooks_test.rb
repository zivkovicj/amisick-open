require "application_system_test_case"

class MWebhooksTest < ApplicationSystemTestCase
  setup do
    @m_webhook = m_webhooks(:one)
  end

  test "visiting the index" do
    visit m_webhooks_url
    assert_selector "h1", text: "M Webhooks"
  end

  test "creating a M webhook" do
    visit m_webhooks_url
    click_on "New M Webhook"

    fill_in "Camp", with: @m_webhook.camp_id
    fill_in "Campaign Name", with: @m_webhook.campaign_name
    fill_in "Date Event", with: @m_webhook.date_event
    fill_in "Date Sent", with: @m_webhook.date_sent
    fill_in "Email", with: @m_webhook.email
    fill_in "Esp", with: @m_webhook.esp
    fill_in "Event", with: @m_webhook.event
    fill_in "Hook", with: @m_webhook.hook_id
    fill_in "List", with: @m_webhook.list_id
    fill_in "Origin", with: @m_webhook.origin_id
    fill_in "Reason", with: @m_webhook.reason
    fill_in "Sending Ip", with: @m_webhook.sending_ip
    fill_in "Tag", with: @m_webhook.tag
    fill_in "Ts", with: @m_webhook.ts
    fill_in "Ts Event", with: @m_webhook.ts_event
    fill_in "Ts Sent", with: @m_webhook.ts_sent
    fill_in "Uer", with: @m_webhook.uer
    fill_in "Url", with: @m_webhook.url
    click_on "Create M webhook"

    assert_text "M webhook was successfully created"
    click_on "Back"
  end

  test "updating a M webhook" do
    visit m_webhooks_url
    click_on "Edit", match: :first

    fill_in "Camp", with: @m_webhook.camp_id
    fill_in "Campaign Name", with: @m_webhook.campaign_name
    fill_in "Date Event", with: @m_webhook.date_event
    fill_in "Date Sent", with: @m_webhook.date_sent
    fill_in "Email", with: @m_webhook.email
    fill_in "Esp", with: @m_webhook.esp
    fill_in "Event", with: @m_webhook.event
    fill_in "Hook", with: @m_webhook.hook_id
    fill_in "List", with: @m_webhook.list_id
    fill_in "Origin", with: @m_webhook.origin_id
    fill_in "Reason", with: @m_webhook.reason
    fill_in "Sending Ip", with: @m_webhook.sending_ip
    fill_in "Tag", with: @m_webhook.tag
    fill_in "Ts", with: @m_webhook.ts
    fill_in "Ts Event", with: @m_webhook.ts_event
    fill_in "Ts Sent", with: @m_webhook.ts_sent
    fill_in "Uer", with: @m_webhook.uer
    fill_in "Url", with: @m_webhook.url
    click_on "Update M webhook"

    assert_text "M webhook was successfully updated"
    click_on "Back"
  end

  test "destroying a M webhook" do
    visit m_webhooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "M webhook was successfully destroyed"
  end
end
