require "application_system_test_case"

class TWebhooksTest < ApplicationSystemTestCase
  setup do
    @t_webhook = t_webhooks(:one)
  end

  test "visiting the index" do
    visit t_webhooks_url
    assert_selector "h1", text: "T Webhooks"
  end

  test "creating a T webhook" do
    visit t_webhooks_url
    click_on "New T Webhook"

    fill_in "Date", with: @t_webhook.date
    fill_in "Desc", with: @t_webhook.desc
    fill_in "Email", with: @t_webhook.email
    fill_in "Esp", with: @t_webhook.esp
    fill_in "Event", with: @t_webhook.event
    fill_in "Hook", with: @t_webhook.hook_id
    fill_in "Link", with: @t_webhook.link
    fill_in "Message", with: @t_webhook.message_id
    fill_in "Reason", with: @t_webhook.reason
    fill_in "Sendin Ip", with: @t_webhook.sendin_ip
    fill_in "Subject", with: @t_webhook.subject
    fill_in "Tag", with: @t_webhook.tag
    fill_in "Teplate", with: @t_webhook.teplate_id
    fill_in "Ts", with: @t_webhook.ts
    fill_in "Ts Epoch", with: @t_webhook.ts_epoch
    fill_in "Ts Event", with: @t_webhook.ts_event
    fill_in "Url", with: @t_webhook.url
    fill_in "User", with: @t_webhook.user
    click_on "Create T webhook"

    assert_text "T webhook was successfully created"
    click_on "Back"
  end

  test "updating a T webhook" do
    visit t_webhooks_url
    click_on "Edit", match: :first

    fill_in "Date", with: @t_webhook.date
    fill_in "Desc", with: @t_webhook.desc
    fill_in "Email", with: @t_webhook.email
    fill_in "Esp", with: @t_webhook.esp
    fill_in "Event", with: @t_webhook.event
    fill_in "Hook", with: @t_webhook.hook_id
    fill_in "Link", with: @t_webhook.link
    fill_in "Message", with: @t_webhook.message_id
    fill_in "Reason", with: @t_webhook.reason
    fill_in "Sendin Ip", with: @t_webhook.sendin_ip
    fill_in "Subject", with: @t_webhook.subject
    fill_in "Tag", with: @t_webhook.tag
    fill_in "Teplate", with: @t_webhook.teplate_id
    fill_in "Ts", with: @t_webhook.ts
    fill_in "Ts Epoch", with: @t_webhook.ts_epoch
    fill_in "Ts Event", with: @t_webhook.ts_event
    fill_in "Url", with: @t_webhook.url
    fill_in "User", with: @t_webhook.user
    click_on "Update T webhook"

    assert_text "T webhook was successfully updated"
    click_on "Back"
  end

  test "destroying a T webhook" do
    visit t_webhooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "T webhook was successfully destroyed"
  end
end
