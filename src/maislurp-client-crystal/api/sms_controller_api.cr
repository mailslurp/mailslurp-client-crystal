# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "uri"

module 
  class SmsControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete sent SMS message.
    # Delete a sent SMS message
    # @param sent_sms_id [String] 
    # @return [nil]
    def delete_sent_sms_message(sent_sms_id : String)
      delete_sent_sms_message_with_http_info(sent_sms_id)
      nil
    end

    # Delete sent SMS message.
    # Delete a sent SMS message
    # @param sent_sms_id [String] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_sent_sms_message_with_http_info(sent_sms_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.delete_sent_sms_message ..."}
      end
      # verify the required parameter "sent_sms_id" is set
      if @api_client.config.client_side_validation && sent_sms_id.nil?
        raise ArgumentError.new("Missing the required parameter 'sent_sms_id' when calling SmsControllerApi.delete_sent_sms_message")
      end
      # resource path
      local_var_path = "/sms/sent/{sentSmsId}".sub("{" + "sentSmsId" + "}", URI.encode(sent_sms_id.to_s))

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
                                                        :"SmsControllerApi.delete_sent_sms_message",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#delete_sent_sms_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Delete all sent SMS messages
    # Delete all sent SMS messages or all messages for a given phone number
    # @return [nil]
    def delete_sent_sms_messages(phone_number_id : String?)
      delete_sent_sms_messages_with_http_info(phone_number_id)
      nil
    end

    # Delete all sent SMS messages
    # Delete all sent SMS messages or all messages for a given phone number
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_sent_sms_messages_with_http_info(phone_number_id : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.delete_sent_sms_messages ..."}
      end
      # resource path
      local_var_path = "/sms/sent"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"phoneNumberId"] = phone_number_id

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
                                                        :"SmsControllerApi.delete_sent_sms_messages",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#delete_sent_sms_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Delete SMS message.
    # Delete an SMS message
    # @param sms_id [String] 
    # @return [nil]
    def delete_sms_message(sms_id : String)
      delete_sms_message_with_http_info(sms_id)
      nil
    end

    # Delete SMS message.
    # Delete an SMS message
    # @param sms_id [String] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_sms_message_with_http_info(sms_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.delete_sms_message ..."}
      end
      # verify the required parameter "sms_id" is set
      if @api_client.config.client_side_validation && sms_id.nil?
        raise ArgumentError.new("Missing the required parameter 'sms_id' when calling SmsControllerApi.delete_sms_message")
      end
      # resource path
      local_var_path = "/sms/{smsId}".sub("{" + "smsId" + "}", URI.encode(sms_id.to_s))

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
                                                        :"SmsControllerApi.delete_sms_message",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#delete_sms_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Delete all SMS messages
    # Delete all SMS messages or all messages for a given phone number
    # @return [nil]
    def delete_sms_messages(phone_number_id : String?)
      delete_sms_messages_with_http_info(phone_number_id)
      nil
    end

    # Delete all SMS messages
    # Delete all SMS messages or all messages for a given phone number
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_sms_messages_with_http_info(phone_number_id : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.delete_sms_messages ..."}
      end
      # resource path
      local_var_path = "/sms"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"phoneNumberId"] = phone_number_id

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
                                                        :"SmsControllerApi.delete_sms_messages",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#delete_sms_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # @return [PageSmsProjection]
    def get_all_sms_messages(phone_number : String?, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?, search : String?, favourite : Bool?)
      data, _status_code, _headers = get_all_sms_messages_with_http_info(phone_number, page, size, sort, since, before, search, favourite)
      data
    end

    # @return [Array<(PageSmsProjection, Integer, Hash)>] PageSmsProjection data, response status code and response headers
    def get_all_sms_messages_with_http_info(phone_number : String?, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?, search : String?, favourite : Bool?)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_all_sms_messages ..."}
      end
      if @api_client.config.client_side_validation && !size.nil? && size > 100
        raise ArgumentError.new("invalid value for \"size\" when calling SmsControllerApi.get_all_sms_messages, must be smaller than or equal to 100.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/sms"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"phoneNumber"] = phone_number
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort
      query_params[:"since"] = since
      query_params[:"before"] = before
      query_params[:"search"] = search
      query_params[:"favourite"] = favourite

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageSmsProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_all_sms_messages",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_all_sms_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageSmsProjection.from_json(data), status_code, headers
    end

    # Get reply for an SMS message
    # Get reply for an SMS message.
    # @param sms_id [String] 
    # @return [ReplyForSms]
    def get_reply_for_sms_message(sms_id : String)
      data, _status_code, _headers = get_reply_for_sms_message_with_http_info(sms_id)
      data
    end

    # Get reply for an SMS message
    # Get reply for an SMS message.
    # @param sms_id [String] 
    # @return [Array<(ReplyForSms, Integer, Hash)>] ReplyForSms data, response status code and response headers
    def get_reply_for_sms_message_with_http_info(sms_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_reply_for_sms_message ..."}
      end
      # verify the required parameter "sms_id" is set
      if @api_client.config.client_side_validation && sms_id.nil?
        raise ArgumentError.new("Missing the required parameter 'sms_id' when calling SmsControllerApi.get_reply_for_sms_message")
      end
      # resource path
      local_var_path = "/sms/{smsId}/reply".sub("{" + "smsId" + "}", URI.encode(sms_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "ReplyForSms"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_reply_for_sms_message",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_reply_for_sms_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return ReplyForSms.from_json(data), status_code, headers
    end

    # Get sent SMS count
    # Get number of sent SMS
    # @return [CountDto]
    def get_sent_sms_count()
      data, _status_code, _headers = get_sent_sms_count_with_http_info()
      data
    end

    # Get sent SMS count
    # Get number of sent SMS
    # @return [Array<(CountDto, Integer, Hash)>] CountDto data, response status code and response headers
    def get_sent_sms_count_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_sent_sms_count ..."}
      end
      # resource path
      local_var_path = "/sms/sent/count"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "CountDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_sent_sms_count",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_sent_sms_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return CountDto.from_json(data), status_code, headers
    end

    # Get sent SMS content including body. Expects sent SMS to exist by ID.
    # Returns an SMS summary object with content.
    # @param sent_sms_id [String] 
    # @return [SentSmsDto]
    def get_sent_sms_message(sent_sms_id : String)
      data, _status_code, _headers = get_sent_sms_message_with_http_info(sent_sms_id)
      data
    end

    # Get sent SMS content including body. Expects sent SMS to exist by ID.
    # Returns an SMS summary object with content.
    # @param sent_sms_id [String] 
    # @return [Array<(SentSmsDto, Integer, Hash)>] SentSmsDto data, response status code and response headers
    def get_sent_sms_message_with_http_info(sent_sms_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_sent_sms_message ..."}
      end
      # verify the required parameter "sent_sms_id" is set
      if @api_client.config.client_side_validation && sent_sms_id.nil?
        raise ArgumentError.new("Missing the required parameter 'sent_sms_id' when calling SmsControllerApi.get_sent_sms_message")
      end
      # resource path
      local_var_path = "/sms/sent/{sentSmsId}".sub("{" + "sentSmsId" + "}", URI.encode(sent_sms_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "SentSmsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_sent_sms_message",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_sent_sms_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SentSmsDto.from_json(data), status_code, headers
    end

    # Get all SMS messages in all phone numbers in paginated form. .
    # By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
    # @return [PageSentSmsProjection]
    def get_sent_sms_messages_paginated(phone_number : String?, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?, search : String?)
      data, _status_code, _headers = get_sent_sms_messages_paginated_with_http_info(phone_number, page, size, sort, since, before, search)
      data
    end

    # Get all SMS messages in all phone numbers in paginated form. .
    # By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
    # @return [Array<(PageSentSmsProjection, Integer, Hash)>] PageSentSmsProjection data, response status code and response headers
    def get_sent_sms_messages_paginated_with_http_info(phone_number : String?, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?, search : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_sent_sms_messages_paginated ..."}
      end
      if @api_client.config.client_side_validation && !size.nil? && size > 100
        raise ArgumentError.new("invalid value for \"size\" when calling SmsControllerApi.get_sent_sms_messages_paginated, must be smaller than or equal to 100.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/sms/sent"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"phoneNumber"] = phone_number
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort
      query_params[:"since"] = since
      query_params[:"before"] = before
      query_params[:"search"] = search

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageSentSmsProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_sent_sms_messages_paginated",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_sent_sms_messages_paginated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageSentSmsProjection.from_json(data), status_code, headers
    end

    # Get SMS count
    # Get number of SMS
    # @return [CountDto]
    def get_sms_count()
      data, _status_code, _headers = get_sms_count_with_http_info()
      data
    end

    # Get SMS count
    # Get number of SMS
    # @return [Array<(CountDto, Integer, Hash)>] CountDto data, response status code and response headers
    def get_sms_count_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_sms_count ..."}
      end
      # resource path
      local_var_path = "/sms/count"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "CountDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_sms_count",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_sms_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return CountDto.from_json(data), status_code, headers
    end

    # Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
    # Returns a SMS summary object with content.
    # @param sms_id [String] 
    # @return [SmsDto]
    def get_sms_message(sms_id : String)
      data, _status_code, _headers = get_sms_message_with_http_info(sms_id)
      data
    end

    # Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
    # Returns a SMS summary object with content.
    # @param sms_id [String] 
    # @return [Array<(SmsDto, Integer, Hash)>] SmsDto data, response status code and response headers
    def get_sms_message_with_http_info(sms_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_sms_message ..."}
      end
      # verify the required parameter "sms_id" is set
      if @api_client.config.client_side_validation && sms_id.nil?
        raise ArgumentError.new("Missing the required parameter 'sms_id' when calling SmsControllerApi.get_sms_message")
      end
      # resource path
      local_var_path = "/sms/{smsId}".sub("{" + "smsId" + "}", URI.encode(sms_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "SmsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_sms_message",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_sms_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SmsDto.from_json(data), status_code, headers
    end

    # Get unread SMS count
    # Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
    # @return [UnreadCount]
    def get_unread_sms_count()
      data, _status_code, _headers = get_unread_sms_count_with_http_info()
      data
    end

    # Get unread SMS count
    # Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
    # @return [Array<(UnreadCount, Integer, Hash)>] UnreadCount data, response status code and response headers
    def get_unread_sms_count_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.get_unread_sms_count ..."}
      end
      # resource path
      local_var_path = "/sms/unreadCount"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "UnreadCount"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SmsControllerApi.get_unread_sms_count",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#get_unread_sms_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return UnreadCount.from_json(data), status_code, headers
    end

    # Send a reply to a received SMS message. Replies are sent from the receiving number.
    # Reply to an SMS message.
    # @param sms_id [String] 
    # @param sms_reply_options [SmsReplyOptions] 
    # @return [SentSmsDto]
    def reply_to_sms_message(sms_id : String, sms_reply_options : SmsReplyOptions)
      data, _status_code, _headers = reply_to_sms_message_with_http_info(sms_id, sms_reply_options)
      data
    end

    # Send a reply to a received SMS message. Replies are sent from the receiving number.
    # Reply to an SMS message.
    # @param sms_id [String] 
    # @param sms_reply_options [SmsReplyOptions] 
    # @return [Array<(SentSmsDto, Integer, Hash)>] SentSmsDto data, response status code and response headers
    def reply_to_sms_message_with_http_info(sms_id : String, sms_reply_options : SmsReplyOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.reply_to_sms_message ..."}
      end
      # verify the required parameter "sms_id" is set
      if @api_client.config.client_side_validation && sms_id.nil?
        raise ArgumentError.new("Missing the required parameter 'sms_id' when calling SmsControllerApi.reply_to_sms_message")
      end
      # verify the required parameter "sms_reply_options" is set
      if @api_client.config.client_side_validation && sms_reply_options.nil?
        raise ArgumentError.new("Missing the required parameter 'sms_reply_options' when calling SmsControllerApi.reply_to_sms_message")
      end
      # resource path
      local_var_path = "/sms/{smsId}/reply".sub("{" + "smsId" + "}", URI.encode(sms_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = sms_reply_options.to_json

      # return_type
      return_type = "SentSmsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"SmsControllerApi.reply_to_sms_message",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#reply_to_sms_message\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SentSmsDto.from_json(data), status_code, headers
    end

    # @param sms_send_options [SmsSendOptions] 
    # @return [SentSmsDto]
    def send_sms(sms_send_options : SmsSendOptions, from_phone_number : String?, from_phone_id : String?)
      data, _status_code, _headers = send_sms_with_http_info(sms_send_options, from_phone_number, from_phone_id)
      data
    end

    # @param sms_send_options [SmsSendOptions] 
    # @return [Array<(SentSmsDto, Integer, Hash)>] SentSmsDto data, response status code and response headers
    def send_sms_with_http_info(sms_send_options : SmsSendOptions, from_phone_number : String?, from_phone_id : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.send_sms ..."}
      end
      # verify the required parameter "sms_send_options" is set
      if @api_client.config.client_side_validation && sms_send_options.nil?
        raise ArgumentError.new("Missing the required parameter 'sms_send_options' when calling SmsControllerApi.send_sms")
      end
      # resource path
      local_var_path = "/sms/send"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"fromPhoneNumber"] = from_phone_number
      query_params[:"fromPhoneId"] = from_phone_id

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = sms_send_options.to_json

      # return_type
      return_type = "SentSmsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"SmsControllerApi.send_sms",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#send_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SentSmsDto.from_json(data), status_code, headers
    end

    # @param sms_id [String] ID of SMS to set favourite state
    # @param favourited [Bool] 
    # @return [SmsDto]
    def set_sms_favourited(sms_id : String, favourited : Bool)
      data, _status_code, _headers = set_sms_favourited_with_http_info(sms_id, favourited)
      data
    end

    # @param sms_id [String] ID of SMS to set favourite state
    # @param favourited [Bool] 
    # @return [Array<(SmsDto, Integer, Hash)>] SmsDto data, response status code and response headers
    def set_sms_favourited_with_http_info(sms_id : String, favourited : Bool)
      if @api_client.config.debugging
        Log.debug {"Calling API: SmsControllerApi.set_sms_favourited ..."}
      end
      # verify the required parameter "sms_id" is set
      if @api_client.config.client_side_validation && sms_id.nil?
        raise ArgumentError.new("Missing the required parameter 'sms_id' when calling SmsControllerApi.set_sms_favourited")
      end
      # verify the required parameter "favourited" is set
      if @api_client.config.client_side_validation && favourited.nil?
        raise ArgumentError.new("Missing the required parameter 'favourited' when calling SmsControllerApi.set_sms_favourited")
      end
      # resource path
      local_var_path = "/sms/{smsId}/favourite".sub("{" + "smsId" + "}", URI.encode(sms_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"favourited"] = favourited

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "SmsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"SmsControllerApi.set_sms_favourited",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SmsControllerApi#set_sms_favourited\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SmsDto.from_json(data), status_code, headers
    end
  end
end
