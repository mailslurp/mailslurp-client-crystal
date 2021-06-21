# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.0
#

require "uri"

module 
  class WebhookControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Attach a WebHook URL to an inbox
    # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    # @param inbox_id [String] inboxId
    # @param webhook_options [CreateWebhookOptions] webhookOptions
    # @return [WebhookDto]
    def create_webhook(inbox_id : String, webhook_options : CreateWebhookOptions)
      data, _status_code, _headers = create_webhook_with_http_info(inbox_id, webhook_options)
      data
    end

    # Attach a WebHook URL to an inbox
    # Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
    # @param inbox_id [String] inboxId
    # @param webhook_options [CreateWebhookOptions] webhookOptions
    # @return [Array<(WebhookDto, Integer, Hash)>] WebhookDto data, response status code and response headers
    def create_webhook_with_http_info(inbox_id : String, webhook_options : CreateWebhookOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.create_webhook ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling WebhookControllerApi.create_webhook")
      end
      # verify the required parameter "webhook_options" is set
      if @api_client.config.client_side_validation && webhook_options.nil?
        raise ArgumentError.new("Missing the required parameter 'webhook_options' when calling WebhookControllerApi.create_webhook")
      end
      # resource path
      local_var_path = "/inboxes/{inboxId}/webhooks".sub("{" + "inboxId" + "}", URI.encode(inbox_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = webhook_options.to_json

      # return_type
      return_type = "WebhookDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"WebhookControllerApi.create_webhook",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#create_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return WebhookDto.from_json(data), status_code, headers
    end

    # Delete and disable a Webhook for an Inbox
    # @param inbox_id [String] inboxId
    # @param webhook_id [String] webhookId
    # @return [nil]
    def delete_webhook(inbox_id : String, webhook_id : String)
      delete_webhook_with_http_info(inbox_id, webhook_id)
      nil
    end

    # Delete and disable a Webhook for an Inbox
    # @param inbox_id [String] inboxId
    # @param webhook_id [String] webhookId
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhook_with_http_info(inbox_id : String, webhook_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.delete_webhook ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling WebhookControllerApi.delete_webhook")
      end
      # verify the required parameter "webhook_id" is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        raise ArgumentError.new("Missing the required parameter 'webhook_id' when calling WebhookControllerApi.delete_webhook")
      end
      # resource path
      local_var_path = "/inboxes/{inboxId}/webhooks/{webhookId}".sub("{" + "inboxId" + "}", URI.encode(inbox_id.to_s)).sub("{" + "webhookId" + "}", URI.encode(webhook_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:DELETE,
                                                        local_var_path,
                                                        :"WebhookControllerApi.delete_webhook",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#delete_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get results for all webhooks
    # @return [PageWebhookResult]
    def get_all_webhook_results(page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_all_webhook_results_with_http_info(page, search_filter, size, sort)
      data
    end

    # Get results for all webhooks
    # @return [Array<(PageWebhookResult, Integer, Hash)>] PageWebhookResult data, response status code and response headers
    def get_all_webhook_results_with_http_info(page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_all_webhook_results ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/webhooks/results"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"searchFilter"] = search_filter
      query_params[:"size"] = size
      query_params[:"sort"] = sort

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageWebhookResult"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_all_webhook_results",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_all_webhook_results\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageWebhookResult.from_json(data), status_code, headers
    end

    # List Webhooks Paginated
    # List webhooks in paginated form. Allows for page index, page size, and sort direction.
    # @return [PageWebhookProjection]
    def get_all_webhooks(page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_all_webhooks_with_http_info(page, search_filter, size, sort)
      data
    end

    # List Webhooks Paginated
    # List webhooks in paginated form. Allows for page index, page size, and sort direction.
    # @return [Array<(PageWebhookProjection, Integer, Hash)>] PageWebhookProjection data, response status code and response headers
    def get_all_webhooks_with_http_info(page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_all_webhooks ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/webhooks/paginated"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"searchFilter"] = search_filter
      query_params[:"size"] = size
      query_params[:"sort"] = sort

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageWebhookProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_all_webhooks",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_all_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageWebhookProjection.from_json(data), status_code, headers
    end

    # Get paginated webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @return [PageWebhookProjection]
    def get_inbox_webhooks_paginated(inbox_id : String, page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_inbox_webhooks_paginated_with_http_info(inbox_id, page, search_filter, size, sort)
      data
    end

    # Get paginated webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @return [Array<(PageWebhookProjection, Integer, Hash)>] PageWebhookProjection data, response status code and response headers
    def get_inbox_webhooks_paginated_with_http_info(inbox_id : String, page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_inbox_webhooks_paginated ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling WebhookControllerApi.get_inbox_webhooks_paginated")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/inboxes/{inboxId}/webhooks/paginated".sub("{" + "inboxId" + "}", URI.encode(inbox_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"searchFilter"] = search_filter
      query_params[:"size"] = size
      query_params[:"sort"] = sort

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageWebhookProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_inbox_webhooks_paginated",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_inbox_webhooks_paginated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageWebhookProjection.from_json(data), status_code, headers
    end

    # Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
    # @return [AbstractWebhookPayload]
    def get_test_webhook_payload(event_name : String?)
      data, _status_code, _headers = get_test_webhook_payload_with_http_info(event_name)
      data
    end

    # Get test webhook payload example. Response content depends on eventName passed. Uses &#x60;EMAIL_RECEIVED&#x60; as default.
    # @return [Array<(AbstractWebhookPayload, Integer, Hash)>] AbstractWebhookPayload data, response status code and response headers
    def get_test_webhook_payload_with_http_info(event_name : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_test_webhook_payload ..."}
      end
      allowable_values = ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT"]
      if @api_client.config.client_side_validation && event_name && !allowable_values.includes?(event_name)
        raise ArgumentError.new("invalid value for \"event_name\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/webhooks/test"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"eventName"] = event_name

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "AbstractWebhookPayload"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_test_webhook_payload",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_test_webhook_payload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return AbstractWebhookPayload.from_json(data), status_code, headers
    end

    # Get webhook test payload for new attachment event
    # @return [WebhookNewAttachmentPayload]
    def get_test_webhook_payload_new_attachment()
      data, _status_code, _headers = get_test_webhook_payload_new_attachment_with_http_info()
      data
    end

    # Get webhook test payload for new attachment event
    # @return [Array<(WebhookNewAttachmentPayload, Integer, Hash)>] WebhookNewAttachmentPayload data, response status code and response headers
    def get_test_webhook_payload_new_attachment_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_test_webhook_payload_new_attachment ..."}
      end
      # resource path
      local_var_path = "/webhooks/test/new-attachment-payload"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "WebhookNewAttachmentPayload"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_test_webhook_payload_new_attachment",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_test_webhook_payload_new_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return WebhookNewAttachmentPayload.from_json(data), status_code, headers
    end

    # Get webhook test payload for new contact event
    # @return [WebhookNewContactPayload]
    def get_test_webhook_payload_new_contact()
      data, _status_code, _headers = get_test_webhook_payload_new_contact_with_http_info()
      data
    end

    # Get webhook test payload for new contact event
    # @return [Array<(WebhookNewContactPayload, Integer, Hash)>] WebhookNewContactPayload data, response status code and response headers
    def get_test_webhook_payload_new_contact_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_test_webhook_payload_new_contact ..."}
      end
      # resource path
      local_var_path = "/webhooks/test/new-contact-payload"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "WebhookNewContactPayload"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_test_webhook_payload_new_contact",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_test_webhook_payload_new_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return WebhookNewContactPayload.from_json(data), status_code, headers
    end

    # Get webhook test payload for new email event
    # @return [WebhookNewEmailPayload]
    def get_test_webhook_payload_new_email()
      data, _status_code, _headers = get_test_webhook_payload_new_email_with_http_info()
      data
    end

    # Get webhook test payload for new email event
    # @return [Array<(WebhookNewEmailPayload, Integer, Hash)>] WebhookNewEmailPayload data, response status code and response headers
    def get_test_webhook_payload_new_email_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_test_webhook_payload_new_email ..."}
      end
      # resource path
      local_var_path = "/webhooks/test/new-email-payload"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "WebhookNewEmailPayload"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_test_webhook_payload_new_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_test_webhook_payload_new_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return WebhookNewEmailPayload.from_json(data), status_code, headers
    end

    # Get a webhook for an Inbox
    # @param webhook_id [String] webhookId
    # @return [WebhookDto]
    def get_webhook(webhook_id : String)
      data, _status_code, _headers = get_webhook_with_http_info(webhook_id)
      data
    end

    # Get a webhook for an Inbox
    # @param webhook_id [String] webhookId
    # @return [Array<(WebhookDto, Integer, Hash)>] WebhookDto data, response status code and response headers
    def get_webhook_with_http_info(webhook_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_webhook ..."}
      end
      # verify the required parameter "webhook_id" is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        raise ArgumentError.new("Missing the required parameter 'webhook_id' when calling WebhookControllerApi.get_webhook")
      end
      # resource path
      local_var_path = "/webhooks/{webhookId}".sub("{" + "webhookId" + "}", URI.encode(webhook_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "WebhookDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_webhook",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return WebhookDto.from_json(data), status_code, headers
    end

    # Get a webhook result for a webhook
    # @param webhook_result_id [String] Webhook Result ID
    # @return [WebhookResultEntity]
    def get_webhook_result(webhook_result_id : String)
      data, _status_code, _headers = get_webhook_result_with_http_info(webhook_result_id)
      data
    end

    # Get a webhook result for a webhook
    # @param webhook_result_id [String] Webhook Result ID
    # @return [Array<(WebhookResultEntity, Integer, Hash)>] WebhookResultEntity data, response status code and response headers
    def get_webhook_result_with_http_info(webhook_result_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_webhook_result ..."}
      end
      # verify the required parameter "webhook_result_id" is set
      if @api_client.config.client_side_validation && webhook_result_id.nil?
        raise ArgumentError.new("Missing the required parameter 'webhook_result_id' when calling WebhookControllerApi.get_webhook_result")
      end
      # resource path
      local_var_path = "/webhooks/results/{webhookResultId}".sub("{" + "webhookResultId" + "}", URI.encode(webhook_result_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "WebhookResultEntity"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_webhook_result",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_webhook_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return WebhookResultEntity.from_json(data), status_code, headers
    end

    # Get a webhook results for a webhook
    # @param webhook_id [String] ID of webhook to get results for
    # @return [PageWebhookResult]
    def get_webhook_results(webhook_id : String, page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_webhook_results_with_http_info(webhook_id, page, search_filter, size, sort)
      data
    end

    # Get a webhook results for a webhook
    # @param webhook_id [String] ID of webhook to get results for
    # @return [Array<(PageWebhookResult, Integer, Hash)>] PageWebhookResult data, response status code and response headers
    def get_webhook_results_with_http_info(webhook_id : String, page : Int32?, search_filter : String?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_webhook_results ..."}
      end
      # verify the required parameter "webhook_id" is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        raise ArgumentError.new("Missing the required parameter 'webhook_id' when calling WebhookControllerApi.get_webhook_results")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/webhooks/{webhookId}/results".sub("{" + "webhookId" + "}", URI.encode(webhook_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"searchFilter"] = search_filter
      query_params[:"size"] = size
      query_params[:"sort"] = sort

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageWebhookResult"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_webhook_results",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_webhook_results\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageWebhookResult.from_json(data), status_code, headers
    end

    # Get all webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @return [Array(WebhookDto)]
    def get_webhooks(inbox_id : String)
      data, _status_code, _headers = get_webhooks_with_http_info(inbox_id)
      data
    end

    # Get all webhooks for an Inbox
    # @param inbox_id [String] inboxId
    # @return [Array<(Array(WebhookDto), Integer, Hash)>] Array(WebhookDto) data, response status code and response headers
    def get_webhooks_with_http_info(inbox_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.get_webhooks ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling WebhookControllerApi.get_webhooks")
      end
      # resource path
      local_var_path = "/inboxes/{inboxId}/webhooks".sub("{" + "inboxId" + "}", URI.encode(inbox_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "Array(WebhookDto)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WebhookControllerApi.get_webhooks",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(WebhookDto).from_json(data), status_code, headers
    end

    # Send webhook test data
    # @param webhook_id [String] webhookId
    # @return [WebhookTestResult]
    def send_test_data(webhook_id : String)
      data, _status_code, _headers = send_test_data_with_http_info(webhook_id)
      data
    end

    # Send webhook test data
    # @param webhook_id [String] webhookId
    # @return [Array<(WebhookTestResult, Integer, Hash)>] WebhookTestResult data, response status code and response headers
    def send_test_data_with_http_info(webhook_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: WebhookControllerApi.send_test_data ..."}
      end
      # verify the required parameter "webhook_id" is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        raise ArgumentError.new("Missing the required parameter 'webhook_id' when calling WebhookControllerApi.send_test_data")
      end
      # resource path
      local_var_path = "/webhooks/{webhookId}/test".sub("{" + "webhookId" + "}", URI.encode(webhook_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "WebhookTestResult"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"WebhookControllerApi.send_test_data",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WebhookControllerApi#send_test_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return WebhookTestResult.from_json(data), status_code, headers
    end
  end
end
