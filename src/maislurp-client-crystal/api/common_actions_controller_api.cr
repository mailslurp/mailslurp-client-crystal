# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "uri"

module 
  class CommonActionsControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create new random inbox
    # Returns an Inbox with an `id` and an `emailAddress`
    # @return [InboxDto]
    def create_new_email_address(allow_team_access : Bool?, use_domain_pool : Bool?, expires_at : Time?, expires_in : Int64?, email_address : String?, inbox_type : String?, description : String?, name : String?, tags : Set(String)?, favourite : Bool?)
      data, _status_code, _headers = create_new_email_address_with_http_info(allow_team_access, use_domain_pool, expires_at, expires_in, email_address, inbox_type, description, name, tags, favourite)
      data
    end

    # Create new random inbox
    # Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
    # @return [Array<(InboxDto, Integer, Hash)>] InboxDto data, response status code and response headers
    def create_new_email_address_with_http_info(allow_team_access : Bool?, use_domain_pool : Bool?, expires_at : Time?, expires_in : Int64?, email_address : String?, inbox_type : String?, description : String?, name : String?, tags : Set(String)?, favourite : Bool?)
      if @api_client.config.debugging
        Log.debug {"Calling API: CommonActionsControllerApi.create_new_email_address ..."}
      end
      allowable_values = ["HTTP_INBOX", "SMTP_INBOX"]
      if @api_client.config.client_side_validation && inbox_type && !allowable_values.includes?(inbox_type)
        raise ArgumentError.new("invalid value for \"inbox_type\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/createInbox"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"allowTeamAccess"] = allow_team_access
      query_params[:"useDomainPool"] = use_domain_pool
      query_params[:"expiresAt"] = expires_at
      query_params[:"expiresIn"] = expires_in
      query_params[:"emailAddress"] = email_address
      query_params[:"inboxType"] = inbox_type
      query_params[:"description"] = description
      query_params[:"name"] = name
      query_params[:"tags"] = @api_client.build_collection_param(tags, :multi)
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
      return_type = "InboxDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"CommonActionsControllerApi.create_new_email_address",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: CommonActionsControllerApi#create_new_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxDto.from_json(data), status_code, headers
    end

    # Create new random inbox
    # Returns an Inbox with an `id` and an `emailAddress`
    # @return [InboxDto]
    def create_new_email_address1(allow_team_access : Bool?, use_domain_pool : Bool?, expires_at : Time?, expires_in : Int64?, email_address : String?, inbox_type : String?, description : String?, name : String?, tags : Set(String)?, favourite : Bool?)
      data, _status_code, _headers = create_new_email_address1_with_http_info(allow_team_access, use_domain_pool, expires_at, expires_in, email_address, inbox_type, description, name, tags, favourite)
      data
    end

    # Create new random inbox
    # Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
    # @return [Array<(InboxDto, Integer, Hash)>] InboxDto data, response status code and response headers
    def create_new_email_address1_with_http_info(allow_team_access : Bool?, use_domain_pool : Bool?, expires_at : Time?, expires_in : Int64?, email_address : String?, inbox_type : String?, description : String?, name : String?, tags : Set(String)?, favourite : Bool?)
      if @api_client.config.debugging
        Log.debug {"Calling API: CommonActionsControllerApi.create_new_email_address1 ..."}
      end
      allowable_values = ["HTTP_INBOX", "SMTP_INBOX"]
      if @api_client.config.client_side_validation && inbox_type && !allowable_values.includes?(inbox_type)
        raise ArgumentError.new("invalid value for \"inbox_type\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/newEmailAddress"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"allowTeamAccess"] = allow_team_access
      query_params[:"useDomainPool"] = use_domain_pool
      query_params[:"expiresAt"] = expires_at
      query_params[:"expiresIn"] = expires_in
      query_params[:"emailAddress"] = email_address
      query_params[:"inboxType"] = inbox_type
      query_params[:"description"] = description
      query_params[:"name"] = name
      query_params[:"tags"] = @api_client.build_collection_param(tags, :multi)
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
      return_type = "InboxDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"CommonActionsControllerApi.create_new_email_address1",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: CommonActionsControllerApi#create_new_email_address1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxDto.from_json(data), status_code, headers
    end

    # Delete inbox email address by inbox id
    # Deletes inbox email address
    # @param inbox_id [String] 
    # @return [nil]
    def delete_email_address(inbox_id : String)
      delete_email_address_with_http_info(inbox_id)
      nil
    end

    # Delete inbox email address by inbox id
    # Deletes inbox email address
    # @param inbox_id [String] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_email_address_with_http_info(inbox_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: CommonActionsControllerApi.delete_email_address ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling CommonActionsControllerApi.delete_email_address")
      end
      # resource path
      local_var_path = "/deleteEmailAddress"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id

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
                                                        :"CommonActionsControllerApi.delete_email_address",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: CommonActionsControllerApi#delete_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Delete all emails in an inbox
    # Deletes all emails
    # @param inbox_id [String] 
    # @return [nil]
    def empty_inbox(inbox_id : String)
      empty_inbox_with_http_info(inbox_id)
      nil
    end

    # Delete all emails in an inbox
    # Deletes all emails
    # @param inbox_id [String] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def empty_inbox_with_http_info(inbox_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: CommonActionsControllerApi.empty_inbox ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling CommonActionsControllerApi.empty_inbox")
      end
      # resource path
      local_var_path = "/emptyInbox"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id

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
                                                        :"CommonActionsControllerApi.empty_inbox",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: CommonActionsControllerApi#empty_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Send an email
    # If no senderId or inboxId provided a random email address will be used to send from.
    # @param simple_send_email_options [SimpleSendEmailOptions] 
    # @return [nil]
    def send_email_simple(simple_send_email_options : SimpleSendEmailOptions)
      send_email_simple_with_http_info(simple_send_email_options)
      nil
    end

    # Send an email
    # If no senderId or inboxId provided a random email address will be used to send from.
    # @param simple_send_email_options [SimpleSendEmailOptions] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def send_email_simple_with_http_info(simple_send_email_options : SimpleSendEmailOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: CommonActionsControllerApi.send_email_simple ..."}
      end
      # verify the required parameter "simple_send_email_options" is set
      if @api_client.config.client_side_validation && simple_send_email_options.nil?
        raise ArgumentError.new("Missing the required parameter 'simple_send_email_options' when calling CommonActionsControllerApi.send_email_simple")
      end
      # resource path
      local_var_path = "/sendEmail"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = simple_send_email_options.to_json

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"CommonActionsControllerApi.send_email_simple",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: CommonActionsControllerApi#send_email_simple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end
  end
end
