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
  class InboxRulesetControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an inbox ruleset
    # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    # @param inbox_id [String] Inbox id to attach ruleset to
    # @param create_inbox_ruleset_options [CreateInboxRulesetOptions] 
    # @return [InboxRulesetDto]
    def create_new_inbox_ruleset(inbox_id : String, create_inbox_ruleset_options : CreateInboxRulesetOptions)
      data, _status_code, _headers = create_new_inbox_ruleset_with_http_info(inbox_id, create_inbox_ruleset_options)
      data
    end

    # Create an inbox ruleset
    # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
    # @param inbox_id [String] Inbox id to attach ruleset to
    # @param create_inbox_ruleset_options [CreateInboxRulesetOptions] 
    # @return [Array<(InboxRulesetDto, Integer, Hash)>] InboxRulesetDto data, response status code and response headers
    def create_new_inbox_ruleset_with_http_info(inbox_id : String, create_inbox_ruleset_options : CreateInboxRulesetOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.create_new_inbox_ruleset ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling InboxRulesetControllerApi.create_new_inbox_ruleset")
      end
      # verify the required parameter "create_inbox_ruleset_options" is set
      if @api_client.config.client_side_validation && create_inbox_ruleset_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_inbox_ruleset_options' when calling InboxRulesetControllerApi.create_new_inbox_ruleset")
      end
      # resource path
      local_var_path = "/rulesets"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = create_inbox_ruleset_options.to_json

      # return_type
      return_type = "InboxRulesetDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"InboxRulesetControllerApi.create_new_inbox_ruleset",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#create_new_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxRulesetDto.from_json(data), status_code, headers
    end

    # Delete an inbox ruleset
    # Delete inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @return [nil]
    def delete_inbox_ruleset(id : String)
      delete_inbox_ruleset_with_http_info(id)
      nil
    end

    # Delete an inbox ruleset
    # Delete inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_ruleset_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.delete_inbox_ruleset ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling InboxRulesetControllerApi.delete_inbox_ruleset")
      end
      # resource path
      local_var_path = "/rulesets/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
                                                        :"InboxRulesetControllerApi.delete_inbox_ruleset",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#delete_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Delete inbox rulesets
    # Delete inbox rulesets. Accepts optional inboxId filter.
    # @return [nil]
    def delete_inbox_rulesets(inbox_id : String?)
      delete_inbox_rulesets_with_http_info(inbox_id)
      nil
    end

    # Delete inbox rulesets
    # Delete inbox rulesets. Accepts optional inboxId filter.
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_inbox_rulesets_with_http_info(inbox_id : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.delete_inbox_rulesets ..."}
      end
      # resource path
      local_var_path = "/rulesets"

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
                                                        :"InboxRulesetControllerApi.delete_inbox_rulesets",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#delete_inbox_rulesets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get an inbox ruleset
    # Get inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @return [InboxRulesetDto]
    def get_inbox_ruleset(id : String)
      data, _status_code, _headers = get_inbox_ruleset_with_http_info(id)
      data
    end

    # Get an inbox ruleset
    # Get inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @return [Array<(InboxRulesetDto, Integer, Hash)>] InboxRulesetDto data, response status code and response headers
    def get_inbox_ruleset_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.get_inbox_ruleset ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling InboxRulesetControllerApi.get_inbox_ruleset")
      end
      # resource path
      local_var_path = "/rulesets/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "InboxRulesetDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"InboxRulesetControllerApi.get_inbox_ruleset",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#get_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxRulesetDto.from_json(data), status_code, headers
    end

    # List inbox rulesets
    # List all rulesets attached to an inbox
    # @return [PageInboxRulesetDto]
    def get_inbox_rulesets(inbox_id : String?, page : Int32?, size : Int32?, sort : String?, search_filter : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_inbox_rulesets_with_http_info(inbox_id, page, size, sort, search_filter, since, before)
      data
    end

    # List inbox rulesets
    # List all rulesets attached to an inbox
    # @return [Array<(PageInboxRulesetDto, Integer, Hash)>] PageInboxRulesetDto data, response status code and response headers
    def get_inbox_rulesets_with_http_info(inbox_id : String?, page : Int32?, size : Int32?, sort : String?, search_filter : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.get_inbox_rulesets ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/rulesets"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort
      query_params[:"searchFilter"] = search_filter
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
      return_type = "PageInboxRulesetDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"InboxRulesetControllerApi.get_inbox_rulesets",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#get_inbox_rulesets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageInboxRulesetDto.from_json(data), status_code, headers
    end

    # Test an inbox ruleset
    # Test an inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] 
    # @return [InboxRulesetTestResult]
    def test_inbox_ruleset(id : String, inbox_ruleset_test_options : InboxRulesetTestOptions)
      data, _status_code, _headers = test_inbox_ruleset_with_http_info(id, inbox_ruleset_test_options)
      data
    end

    # Test an inbox ruleset
    # Test an inbox ruleset
    # @param id [String] ID of inbox ruleset
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] 
    # @return [Array<(InboxRulesetTestResult, Integer, Hash)>] InboxRulesetTestResult data, response status code and response headers
    def test_inbox_ruleset_with_http_info(id : String, inbox_ruleset_test_options : InboxRulesetTestOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.test_inbox_ruleset ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling InboxRulesetControllerApi.test_inbox_ruleset")
      end
      # verify the required parameter "inbox_ruleset_test_options" is set
      if @api_client.config.client_side_validation && inbox_ruleset_test_options.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_ruleset_test_options' when calling InboxRulesetControllerApi.test_inbox_ruleset")
      end
      # resource path
      local_var_path = "/rulesets/{id}/test".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      post_body = inbox_ruleset_test_options.to_json

      # return_type
      return_type = "InboxRulesetTestResult"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"InboxRulesetControllerApi.test_inbox_ruleset",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#test_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxRulesetTestResult.from_json(data), status_code, headers
    end

    # Test inbox rulesets for inbox
    # Test inbox rulesets for inbox
    # @param inbox_id [String] ID of inbox
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] 
    # @return [InboxRulesetTestResult]
    def test_inbox_rulesets_for_inbox(inbox_id : String, inbox_ruleset_test_options : InboxRulesetTestOptions)
      data, _status_code, _headers = test_inbox_rulesets_for_inbox_with_http_info(inbox_id, inbox_ruleset_test_options)
      data
    end

    # Test inbox rulesets for inbox
    # Test inbox rulesets for inbox
    # @param inbox_id [String] ID of inbox
    # @param inbox_ruleset_test_options [InboxRulesetTestOptions] 
    # @return [Array<(InboxRulesetTestResult, Integer, Hash)>] InboxRulesetTestResult data, response status code and response headers
    def test_inbox_rulesets_for_inbox_with_http_info(inbox_id : String, inbox_ruleset_test_options : InboxRulesetTestOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.test_inbox_rulesets_for_inbox ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling InboxRulesetControllerApi.test_inbox_rulesets_for_inbox")
      end
      # verify the required parameter "inbox_ruleset_test_options" is set
      if @api_client.config.client_side_validation && inbox_ruleset_test_options.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_ruleset_test_options' when calling InboxRulesetControllerApi.test_inbox_rulesets_for_inbox")
      end
      # resource path
      local_var_path = "/rulesets"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = inbox_ruleset_test_options.to_json

      # return_type
      return_type = "InboxRulesetTestResult"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"InboxRulesetControllerApi.test_inbox_rulesets_for_inbox",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#test_inbox_rulesets_for_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxRulesetTestResult.from_json(data), status_code, headers
    end

    # Test new inbox ruleset
    # Test new inbox ruleset
    # @param test_new_inbox_ruleset_options [TestNewInboxRulesetOptions] 
    # @return [InboxRulesetTestResult]
    def test_new_inbox_ruleset(test_new_inbox_ruleset_options : TestNewInboxRulesetOptions)
      data, _status_code, _headers = test_new_inbox_ruleset_with_http_info(test_new_inbox_ruleset_options)
      data
    end

    # Test new inbox ruleset
    # Test new inbox ruleset
    # @param test_new_inbox_ruleset_options [TestNewInboxRulesetOptions] 
    # @return [Array<(InboxRulesetTestResult, Integer, Hash)>] InboxRulesetTestResult data, response status code and response headers
    def test_new_inbox_ruleset_with_http_info(test_new_inbox_ruleset_options : TestNewInboxRulesetOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: InboxRulesetControllerApi.test_new_inbox_ruleset ..."}
      end
      # verify the required parameter "test_new_inbox_ruleset_options" is set
      if @api_client.config.client_side_validation && test_new_inbox_ruleset_options.nil?
        raise ArgumentError.new("Missing the required parameter 'test_new_inbox_ruleset_options' when calling InboxRulesetControllerApi.test_new_inbox_ruleset")
      end
      # resource path
      local_var_path = "/rulesets"

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
      post_body = test_new_inbox_ruleset_options.to_json

      # return_type
      return_type = "InboxRulesetTestResult"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PATCH,
                                                        local_var_path,
                                                        :"InboxRulesetControllerApi.test_new_inbox_ruleset",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: InboxRulesetControllerApi#test_new_inbox_ruleset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return InboxRulesetTestResult.from_json(data), status_code, headers
    end
  end
end
