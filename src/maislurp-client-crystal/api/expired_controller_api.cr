# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "uri"

module 
  class ExpiredControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get default expiration settings
    # Return default times used for inbox expiration
    # @return [ExpirationDefaults]
    def get_expiration_defaults()
      data, _status_code, _headers = get_expiration_defaults_with_http_info()
      data
    end

    # Get default expiration settings
    # Return default times used for inbox expiration
    # @return [Array<(ExpirationDefaults, Integer, Hash)>] ExpirationDefaults data, response status code and response headers
    def get_expiration_defaults_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: ExpiredControllerApi.get_expiration_defaults ..."}
      end
      # resource path
      local_var_path = "/expired/defaults"

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
      return_type = "ExpirationDefaults"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ExpiredControllerApi.get_expiration_defaults",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ExpiredControllerApi#get_expiration_defaults\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return ExpirationDefaults.from_json(data), status_code, headers
    end

    # Get expired inbox record for a previously existing inbox
    # Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
    # @param inbox_id [String] ID of inbox you want to retrieve (not the inbox ID)
    # @return [ExpiredInboxDto]
    def get_expired_inbox_by_inbox_id(inbox_id : String)
      data, _status_code, _headers = get_expired_inbox_by_inbox_id_with_http_info(inbox_id)
      data
    end

    # Get expired inbox record for a previously existing inbox
    # Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
    # @param inbox_id [String] ID of inbox you want to retrieve (not the inbox ID)
    # @return [Array<(ExpiredInboxDto, Integer, Hash)>] ExpiredInboxDto data, response status code and response headers
    def get_expired_inbox_by_inbox_id_with_http_info(inbox_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: ExpiredControllerApi.get_expired_inbox_by_inbox_id ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling ExpiredControllerApi.get_expired_inbox_by_inbox_id")
      end
      # resource path
      local_var_path = "/expired/inbox/{inboxId}".sub("{" + "inboxId" + "}", URI.encode(inbox_id.to_s))

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
      return_type = "ExpiredInboxDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ExpiredControllerApi.get_expired_inbox_by_inbox_id",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ExpiredControllerApi#get_expired_inbox_by_inbox_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return ExpiredInboxDto.from_json(data), status_code, headers
    end

    # Get an expired inbox record
    # Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
    # @param expired_id [String] ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId
    # @return [ExpiredInboxDto]
    def get_expired_inbox_record(expired_id : String)
      data, _status_code, _headers = get_expired_inbox_record_with_http_info(expired_id)
      data
    end

    # Get an expired inbox record
    # Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
    # @param expired_id [String] ID of the ExpiredInboxRecord you want to retrieve. This is different from the ID of the inbox you are interested in. See other methods for getting ExpiredInboxRecord for an inbox inboxId
    # @return [Array<(ExpiredInboxDto, Integer, Hash)>] ExpiredInboxDto data, response status code and response headers
    def get_expired_inbox_record_with_http_info(expired_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: ExpiredControllerApi.get_expired_inbox_record ..."}
      end
      # verify the required parameter "expired_id" is set
      if @api_client.config.client_side_validation && expired_id.nil?
        raise ArgumentError.new("Missing the required parameter 'expired_id' when calling ExpiredControllerApi.get_expired_inbox_record")
      end
      # resource path
      local_var_path = "/expired/{expiredId}".sub("{" + "expiredId" + "}", URI.encode(expired_id.to_s))

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
      return_type = "ExpiredInboxDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ExpiredControllerApi.get_expired_inbox_record",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ExpiredControllerApi#get_expired_inbox_record\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return ExpiredInboxDto.from_json(data), status_code, headers
    end

    # List records of expired inboxes
    # Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
    # @return [PageExpiredInboxRecordProjection]
    def get_expired_inboxes(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_expired_inboxes_with_http_info(page, size, sort, since, before)
      data
    end

    # List records of expired inboxes
    # Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
    # @return [Array<(PageExpiredInboxRecordProjection, Integer, Hash)>] PageExpiredInboxRecordProjection data, response status code and response headers
    def get_expired_inboxes_with_http_info(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: ExpiredControllerApi.get_expired_inboxes ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/expired"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort
      query_params[:"since"] = since
      query_params[:"before"] = before

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageExpiredInboxRecordProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ExpiredControllerApi.get_expired_inboxes",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ExpiredControllerApi#get_expired_inboxes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageExpiredInboxRecordProjection.from_json(data), status_code, headers
    end
  end
end
