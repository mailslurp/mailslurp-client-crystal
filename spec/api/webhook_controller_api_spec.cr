# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for ::WebhookControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "WebhookControllerApi" do
  describe "test an instance of WebhookControllerApi" do
    it "should create an instance of WebhookControllerApi" do
      api_instance = ::WebhookControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::WebhookControllerApi)
    end
  end

  # unit tests for create_webhook
  # Attach a WebHook URL to an inbox
  # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  # @param inbox_id inboxId
  # @param webhook_options webhookOptions
  # @param [Hash] opts the optional parameters
  # @return [WebhookDto]
  describe "create_webhook test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_webhook
  # Delete and disable a Webhook for an Inbox
  # @param inbox_id inboxId
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_webhook test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_all_webhook_results
  # Get results for all webhooks
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @option opts [Int32] :page Optional page index in list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Int32] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageWebhookResult]
  describe "get_all_webhook_results test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_all_webhooks
  # List Webhooks Paginated
  # List webhooks in paginated form. Allows for page index, page size, and sort direction.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @option opts [Int32] :page Optional page index in list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Int32] :size Optional page size for paginated result list.
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageWebhookProjection]
  describe "get_all_webhooks test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_inbox_webhooks_paginated
  # Get paginated webhooks for an Inbox
  # @param inbox_id inboxId
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @option opts [Int32] :page Optional page index in list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Int32] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageWebhookProjection]
  describe "get_inbox_webhooks_paginated test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_json_schema_for_webhook_payload
  # Get JSON Schema definition for webhook payload
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [JSONSchemaDto]
  describe "get_json_schema_for_webhook_payload test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_webhook_payload
  # Get test webhook payload example. Response content depends on eventName passed. Uses &#x60;EMAIL_RECEIVED&#x60; as default.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :event_name eventName
  # @return [AbstractWebhookPayload]
  describe "get_test_webhook_payload test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_webhook_payload_email_opened
  # Get webhook test payload for email opened event
  # @param [Hash] opts the optional parameters
  # @return [WebhookEmailOpenedPayload]
  describe "get_test_webhook_payload_email_opened test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_webhook_payload_email_read
  # Get webhook test payload for email opened event
  # @param [Hash] opts the optional parameters
  # @return [WebhookEmailReadPayload]
  describe "get_test_webhook_payload_email_read test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_webhook_payload_for_webhook
  # Get example payload for webhook
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [AbstractWebhookPayload]
  describe "get_test_webhook_payload_for_webhook test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_webhook_payload_new_attachment
  # Get webhook test payload for new attachment event
  # @param [Hash] opts the optional parameters
  # @return [WebhookNewAttachmentPayload]
  describe "get_test_webhook_payload_new_attachment test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_webhook_payload_new_contact
  # Get webhook test payload for new contact event
  # @param [Hash] opts the optional parameters
  # @return [WebhookNewContactPayload]
  describe "get_test_webhook_payload_new_contact test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_test_webhook_payload_new_email
  # Get webhook test payload for new email event
  # @param [Hash] opts the optional parameters
  # @return [WebhookNewEmailPayload]
  describe "get_test_webhook_payload_new_email test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_webhook
  # Get a webhook for an Inbox
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [WebhookDto]
  describe "get_webhook test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_webhook_result
  # Get a webhook result for a webhook
  # @param webhook_result_id Webhook Result ID
  # @param [Hash] opts the optional parameters
  # @return [WebhookResultDto]
  describe "get_webhook_result test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_webhook_results
  # Get a webhook results for a webhook
  # @param webhook_id ID of webhook to get results for
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @option opts [Int32] :page Optional page index in list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Int32] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageWebhookResult]
  describe "get_webhook_results test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_webhooks
  # Get all webhooks for an Inbox
  # @param inbox_id inboxId
  # @param [Hash] opts the optional parameters
  # @return [Array(WebhookDto)]
  describe "get_webhooks test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for redrive_webhook_result
  # Get a webhook result and try to resend the original webhook payload
  # Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
  # @param webhook_result_id Webhook Result ID
  # @param [Hash] opts the optional parameters
  # @return [WebhookRedriveResult]
  describe "redrive_webhook_result test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for send_test_data
  # Send webhook test data
  # @param webhook_id webhookId
  # @param [Hash] opts the optional parameters
  # @return [WebhookTestResult]
  describe "send_test_data test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
