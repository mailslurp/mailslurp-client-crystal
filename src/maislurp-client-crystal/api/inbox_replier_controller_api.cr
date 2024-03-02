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
  class InboxReplierControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an inbox replier
    # Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving
    # @param create_inbox_replier_options [CreateInboxReplierOptions] 
    # @return [InboxReplierDto]
    def create_new_inbox_replier(create_inbox_replier_options : CreateInboxReplierOptions)
      data, _status_code, _headers = create_new_inbox_replier_with_http_info(create_inbox_replier_options)
      data
    end

    # Create an inbox replier
    # Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving
    # @param create_inbox_replier_options [CreateInboxReplierOptions] 
    # @return [Array<(InboxReplierDto, Integer, Hash)>] InboxReplierDto data, response status code and response headers
    def create_new_inbox_replier_with_http_info(create_inbox_replier_options : CreateInboxReplierOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxReplierControllerApi.create_new_inbox_replier ..."}
      end
      # verify the required parameter "create_inbox_replier_options" is set
      if @api_client.config.client_side_validation && create_inbox_replier_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_inbox_replier_options' when calling InboxReplierControllerApi.create_new_inbox_replier")
      end
      # resource path
      local_var_path = "/repliers"

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
      post_body = create_inbox_replier_options.to_json

      # return_type
      return_type = "InboxReplierDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"InboxReplierControllerApi.create_new_inbox_replier",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxReplierControllerApi#create_new_inbox_replier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxReplierDto.from_json(data), status_code, headers
    end

    # Delete an inbox replier
    # Delete inbox replier
    # @param id [String] ID of inbox replier
    # @return [nil]
    def delete_inbox_replier(id : String)
      delete_inbox_replier_with_http_info(id)
      nil
    end

    # Delete an inbox replier
    # Delete inbox replier
    # @param id [String] ID of inbox replier
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_replier_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxReplierControllerApi.delete_inbox_replier ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling InboxReplierControllerApi.delete_inbox_replier")
      end
      # resource path
      local_var_path = "/repliers/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
                                                        :"InboxReplierControllerApi.delete_inbox_replier",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxReplierControllerApi#delete_inbox_replier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Delete inbox repliers
    # Delete inbox repliers. Accepts optional inboxId filter.
    # @return [nil]
    def delete_inbox_repliers(inbox_id : String?)
      delete_inbox_repliers_with_http_info(inbox_id)
      nil
    end

    # Delete inbox repliers
    # Delete inbox repliers. Accepts optional inboxId filter.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_repliers_with_http_info(inbox_id : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxReplierControllerApi.delete_inbox_repliers ..."}
      end
      # resource path
      local_var_path = "/repliers"

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
                                                        :"InboxReplierControllerApi.delete_inbox_repliers",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxReplierControllerApi#delete_inbox_repliers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get an inbox replier
    # Get inbox ruleset
    # @param id [String] ID of inbox replier
    # @return [InboxReplierDto]
    def get_inbox_replier(id : String)
      data, _status_code, _headers = get_inbox_replier_with_http_info(id)
      data
    end

    # Get an inbox replier
    # Get inbox ruleset
    # @param id [String] ID of inbox replier
    # @return [Array<(InboxReplierDto, Integer, Hash)>] InboxReplierDto data, response status code and response headers
    def get_inbox_replier_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxReplierControllerApi.get_inbox_replier ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling InboxReplierControllerApi.get_inbox_replier")
      end
      # resource path
      local_var_path = "/repliers/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "InboxReplierDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"InboxReplierControllerApi.get_inbox_replier",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxReplierControllerApi#get_inbox_replier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxReplierDto.from_json(data), status_code, headers
    end

    # Get an inbox replier event list
    # Get inbox ruleset events
    # @param id [String] ID of inbox replier
    # @return [PageInboxReplierEvents]
    def get_inbox_replier_events(id : String, page : Int32?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_inbox_replier_events_with_http_info(id, page, size, sort)
      data
    end

    # Get an inbox replier event list
    # Get inbox ruleset events
    # @param id [String] ID of inbox replier
    # @return [Array<(PageInboxReplierEvents, Integer, Hash)>] PageInboxReplierEvents data, response status code and response headers
    def get_inbox_replier_events_with_http_info(id : String, page : Int32?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxReplierControllerApi.get_inbox_replier_events ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling InboxReplierControllerApi.get_inbox_replier_events")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/repliers/{id}/events".sub("{" + "id" + "}", URI.encode(id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageInboxReplierEvents"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"InboxReplierControllerApi.get_inbox_replier_events",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxReplierControllerApi#get_inbox_replier_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageInboxReplierEvents.from_json(data), status_code, headers
    end

    # List inbox repliers
    # List all repliers attached to an inbox
    # @return [PageInboxReplierDto]
    def get_inbox_repliers(inbox_id : String?, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_inbox_repliers_with_http_info(inbox_id, page, size, sort, since, before)
      data
    end

    # List inbox repliers
    # List all repliers attached to an inbox
    # @return [Array<(PageInboxReplierDto, Integer, Hash)>] PageInboxReplierDto data, response status code and response headers
    def get_inbox_repliers_with_http_info(inbox_id : String?, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxReplierControllerApi.get_inbox_repliers ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/repliers"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
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
      return_type = "PageInboxReplierDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"InboxReplierControllerApi.get_inbox_repliers",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxReplierControllerApi#get_inbox_repliers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageInboxReplierDto.from_json(data), status_code, headers
    end

    # Update an inbox replier
    # Update inbox ruleset
    # @param id [String] ID of inbox replier
    # @param update_inbox_replier_options [UpdateInboxReplierOptions] 
    # @return [InboxReplierDto]
    def update_inbox_replier(id : String, update_inbox_replier_options : UpdateInboxReplierOptions)
      data, _status_code, _headers = update_inbox_replier_with_http_info(id, update_inbox_replier_options)
      data
    end

    # Update an inbox replier
    # Update inbox ruleset
    # @param id [String] ID of inbox replier
    # @param update_inbox_replier_options [UpdateInboxReplierOptions] 
    # @return [Array<(InboxReplierDto, Integer, Hash)>] InboxReplierDto data, response status code and response headers
    def update_inbox_replier_with_http_info(id : String, update_inbox_replier_options : UpdateInboxReplierOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxReplierControllerApi.update_inbox_replier ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling InboxReplierControllerApi.update_inbox_replier")
      end
      # verify the required parameter "update_inbox_replier_options" is set
      if @api_client.config.client_side_validation && update_inbox_replier_options.nil?
        raise ArgumentError.new("Missing the required parameter 'update_inbox_replier_options' when calling InboxReplierControllerApi.update_inbox_replier")
      end
      # resource path
      local_var_path = "/repliers/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      post_body = update_inbox_replier_options.to_json

      # return_type
      return_type = "InboxReplierDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"InboxReplierControllerApi.update_inbox_replier",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxReplierControllerApi#update_inbox_replier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxReplierDto.from_json(data), status_code, headers
    end
  end
end
