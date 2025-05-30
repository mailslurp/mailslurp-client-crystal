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
  class WaitForControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Wait for an email to match the provided filter conditions such as subject contains keyword.
    # Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
    # @param wait_for_conditions [WaitForConditions] 
    # @return [Array(EmailPreview)]
    def wait_for(wait_for_conditions : WaitForConditions)
      data, _status_code, _headers = wait_for_with_http_info(wait_for_conditions)
      data
    end

    # Wait for an email to match the provided filter conditions such as subject contains keyword.
    # Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
    # @param wait_for_conditions [WaitForConditions] 
    # @return [Array<(Array(EmailPreview), Integer, Hash)>] Array(EmailPreview) data, response status code and response headers
    def wait_for_with_http_info(wait_for_conditions : WaitForConditions)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for ..."}
      end
      # verify the required parameter "wait_for_conditions" is set
      if @api_client.config.client_side_validation && wait_for_conditions.nil?
        raise ArgumentError.new("Missing the required parameter 'wait_for_conditions' when calling WaitForControllerApi.wait_for")
      end
      # resource path
      local_var_path = "/waitFor"

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
      post_body = wait_for_conditions.to_json

      # return_type
      return_type = "Array(EmailPreview)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(EmailPreview).from_json(data), status_code, headers
    end

    # Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
    # If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
    # @param inbox_id [String] Id of the inbox we are fetching emails from
    # @param count [Int32] Number of emails to wait for. Must be greater that 1
    # @return [Array(EmailPreview)]
    def wait_for_email_count(inbox_id : String, count : Int32, timeout : Int64?, unread_only : Bool?, before : Time?, since : Time?, sort : String?, delay : Int64?)
      data, _status_code, _headers = wait_for_email_count_with_http_info(inbox_id, count, timeout, unread_only, before, since, sort, delay)
      data
    end

    # Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
    # If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
    # @param inbox_id [String] Id of the inbox we are fetching emails from
    # @param count [Int32] Number of emails to wait for. Must be greater that 1
    # @return [Array<(Array(EmailPreview), Integer, Hash)>] Array(EmailPreview) data, response status code and response headers
    def wait_for_email_count_with_http_info(inbox_id : String, count : Int32, timeout : Int64?, unread_only : Bool?, before : Time?, since : Time?, sort : String?, delay : Int64?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for_email_count ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling WaitForControllerApi.wait_for_email_count")
      end
      # verify the required parameter "count" is set
      if @api_client.config.client_side_validation && count.nil?
        raise ArgumentError.new("Missing the required parameter 'count' when calling WaitForControllerApi.wait_for_email_count")
      end
      if @api_client.config.client_side_validation && count < 1
        raise ArgumentError.new("invalid value for \"count\" when calling WaitForControllerApi.wait_for_email_count, must be greater than or equal to 1.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/waitForEmailCount"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"count"] = count
      query_params[:"timeout"] = timeout
      query_params[:"unreadOnly"] = unread_only
      query_params[:"before"] = before
      query_params[:"since"] = since
      query_params[:"sort"] = sort
      query_params[:"delay"] = delay

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "Array(EmailPreview)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for_email_count",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for_email_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(EmailPreview).from_json(data), status_code, headers
    end

    # Fetch inbox's latest email or if empty wait for an email to arrive
    # Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
    # @return [Email]
    def wait_for_latest_email(inbox_id : String?, timeout : Int64?, unread_only : Bool?, before : Time?, since : Time?, sort : String?, delay : Int64?)
      data, _status_code, _headers = wait_for_latest_email_with_http_info(inbox_id, timeout, unread_only, before, since, sort, delay)
      data
    end

    # Fetch inbox&#39;s latest email or if empty wait for an email to arrive
    # Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set &#x60;unreadOnly&#x3D;true&#x60; or see the other receive methods such as &#x60;waitForNthEmail&#x60; or &#x60;waitForEmailCount&#x60;.
    # @return [Array<(Email, Integer, Hash)>] Email data, response status code and response headers
    def wait_for_latest_email_with_http_info(inbox_id : String?, timeout : Int64?, unread_only : Bool?, before : Time?, since : Time?, sort : String?, delay : Int64?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for_latest_email ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/waitForLatestEmail"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"timeout"] = timeout
      query_params[:"unreadOnly"] = unread_only
      query_params[:"before"] = before
      query_params[:"since"] = since
      query_params[:"sort"] = sort
      query_params[:"delay"] = delay

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "Email"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for_latest_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for_latest_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Email.from_json(data), status_code, headers
    end

    # Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
    # Wait until a phone number meets given conditions or return immediately if already met
    # @param wait_for_single_sms_options [WaitForSingleSmsOptions] 
    # @return [SmsDto]
    def wait_for_latest_sms(wait_for_single_sms_options : WaitForSingleSmsOptions)
      data, _status_code, _headers = wait_for_latest_sms_with_http_info(wait_for_single_sms_options)
      data
    end

    # Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
    # Wait until a phone number meets given conditions or return immediately if already met
    # @param wait_for_single_sms_options [WaitForSingleSmsOptions] 
    # @return [Array<(SmsDto, Integer, Hash)>] SmsDto data, response status code and response headers
    def wait_for_latest_sms_with_http_info(wait_for_single_sms_options : WaitForSingleSmsOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for_latest_sms ..."}
      end
      # verify the required parameter "wait_for_single_sms_options" is set
      if @api_client.config.client_side_validation && wait_for_single_sms_options.nil?
        raise ArgumentError.new("Missing the required parameter 'wait_for_single_sms_options' when calling WaitForControllerApi.wait_for_latest_sms")
      end
      # resource path
      local_var_path = "/waitForLatestSms"

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
      post_body = wait_for_single_sms_options.to_json

      # return_type
      return_type = "SmsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for_latest_sms",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for_latest_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SmsDto.from_json(data), status_code, headers
    end

    # Wait or return list of emails that match simple matching patterns
    # Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
    # @param inbox_id [String] Id of the inbox we are fetching emails from
    # @param count [Int32] Number of emails to wait for. Must be greater or equal to 1
    # @param match_options [MatchOptions] 
    # @return [Array(EmailPreview)]
    def wait_for_matching_emails(inbox_id : String, count : Int32, match_options : MatchOptions, before : Time?, since : Time?, sort : String?, delay : Int64?, timeout : Int64?, unread_only : Bool?)
      data, _status_code, _headers = wait_for_matching_emails_with_http_info(inbox_id, count, match_options, before, since, sort, delay, timeout, unread_only)
      data
    end

    # Wait or return list of emails that match simple matching patterns
    # Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
    # @param inbox_id [String] Id of the inbox we are fetching emails from
    # @param count [Int32] Number of emails to wait for. Must be greater or equal to 1
    # @param match_options [MatchOptions] 
    # @return [Array<(Array(EmailPreview), Integer, Hash)>] Array(EmailPreview) data, response status code and response headers
    def wait_for_matching_emails_with_http_info(inbox_id : String, count : Int32, match_options : MatchOptions, before : Time?, since : Time?, sort : String?, delay : Int64?, timeout : Int64?, unread_only : Bool?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for_matching_emails ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling WaitForControllerApi.wait_for_matching_emails")
      end
      # verify the required parameter "count" is set
      if @api_client.config.client_side_validation && count.nil?
        raise ArgumentError.new("Missing the required parameter 'count' when calling WaitForControllerApi.wait_for_matching_emails")
      end
      if @api_client.config.client_side_validation && count < 1
        raise ArgumentError.new("invalid value for \"count\" when calling WaitForControllerApi.wait_for_matching_emails, must be greater than or equal to 1.")
      end

      # verify the required parameter "match_options" is set
      if @api_client.config.client_side_validation && match_options.nil?
        raise ArgumentError.new("Missing the required parameter 'match_options' when calling WaitForControllerApi.wait_for_matching_emails")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/waitForMatchingEmails"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"count"] = count
      query_params[:"before"] = before
      query_params[:"since"] = since
      query_params[:"sort"] = sort
      query_params[:"delay"] = delay
      query_params[:"timeout"] = timeout
      query_params[:"unreadOnly"] = unread_only

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = match_options.to_json

      # return_type
      return_type = "Array(EmailPreview)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for_matching_emails",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for_matching_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(EmailPreview).from_json(data), status_code, headers
    end

    # Wait for or return the first email that matches provided MatchOptions array
    # Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
    # @param inbox_id [String] Id of the inbox we are matching an email for
    # @param match_options [MatchOptions] 
    # @return [Email]
    def wait_for_matching_first_email(inbox_id : String, match_options : MatchOptions, timeout : Int64?, unread_only : Bool?, since : Time?, before : Time?, sort : String?, delay : Int64?)
      data, _status_code, _headers = wait_for_matching_first_email_with_http_info(inbox_id, match_options, timeout, unread_only, since, before, sort, delay)
      data
    end

    # Wait for or return the first email that matches provided MatchOptions array
    # Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
    # @param inbox_id [String] Id of the inbox we are matching an email for
    # @param match_options [MatchOptions] 
    # @return [Array<(Email, Integer, Hash)>] Email data, response status code and response headers
    def wait_for_matching_first_email_with_http_info(inbox_id : String, match_options : MatchOptions, timeout : Int64?, unread_only : Bool?, since : Time?, before : Time?, sort : String?, delay : Int64?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for_matching_first_email ..."}
      end
      # verify the required parameter "inbox_id" is set
      if @api_client.config.client_side_validation && inbox_id.nil?
        raise ArgumentError.new("Missing the required parameter 'inbox_id' when calling WaitForControllerApi.wait_for_matching_first_email")
      end
      # verify the required parameter "match_options" is set
      if @api_client.config.client_side_validation && match_options.nil?
        raise ArgumentError.new("Missing the required parameter 'match_options' when calling WaitForControllerApi.wait_for_matching_first_email")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/waitForMatchingFirstEmail"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"timeout"] = timeout
      query_params[:"unreadOnly"] = unread_only
      query_params[:"since"] = since
      query_params[:"before"] = before
      query_params[:"sort"] = sort
      query_params[:"delay"] = delay

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = match_options.to_json

      # return_type
      return_type = "Email"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for_matching_first_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for_matching_first_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Email.from_json(data), status_code, headers
    end

    # Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
    # If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
    # @return [Email]
    def wait_for_nth_email(inbox_id : String?, index : Int32?, timeout : Int64?, unread_only : Bool?, since : Time?, before : Time?, sort : String?, delay : Int64?)
      data, _status_code, _headers = wait_for_nth_email_with_http_info(inbox_id, index, timeout, unread_only, since, before, sort, delay)
      data
    end

    # Wait for or fetch the email with a given index in the inbox specified. If index doesn&#39;t exist waits for it to exist or timeout to occur.
    # If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
    # @return [Array<(Email, Integer, Hash)>] Email data, response status code and response headers
    def wait_for_nth_email_with_http_info(inbox_id : String?, index : Int32?, timeout : Int64?, unread_only : Bool?, since : Time?, before : Time?, sort : String?, delay : Int64?)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for_nth_email ..."}
      end
      if @api_client.config.client_side_validation && !index.nil? && index > 2147483647
        raise ArgumentError.new("invalid value for \"index\" when calling WaitForControllerApi.wait_for_nth_email, must be smaller than or equal to 2147483647.")
      end

      if @api_client.config.client_side_validation && !index.nil? && index < 0
        raise ArgumentError.new("invalid value for \"index\" when calling WaitForControllerApi.wait_for_nth_email, must be greater than or equal to 0.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/waitForNthEmail"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"index"] = index
      query_params[:"timeout"] = timeout
      query_params[:"unreadOnly"] = unread_only
      query_params[:"since"] = since
      query_params[:"before"] = before
      query_params[:"sort"] = sort
      query_params[:"delay"] = delay

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "Email"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for_nth_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for_nth_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Email.from_json(data), status_code, headers
    end

    # Wait for an SMS message to match the provided filter conditions such as body contains keyword.
    # Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
    # @param wait_for_sms_conditions [WaitForSmsConditions] 
    # @return [Array(SmsPreview)]
    def wait_for_sms(wait_for_sms_conditions : WaitForSmsConditions)
      data, _status_code, _headers = wait_for_sms_with_http_info(wait_for_sms_conditions)
      data
    end

    # Wait for an SMS message to match the provided filter conditions such as body contains keyword.
    # Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
    # @param wait_for_sms_conditions [WaitForSmsConditions] 
    # @return [Array<(Array(SmsPreview), Integer, Hash)>] Array(SmsPreview) data, response status code and response headers
    def wait_for_sms_with_http_info(wait_for_sms_conditions : WaitForSmsConditions)
      if @api_client.config.debugging
        Log.debug {"Calling API: WaitForControllerApi.wait_for_sms ..."}
      end
      # verify the required parameter "wait_for_sms_conditions" is set
      if @api_client.config.client_side_validation && wait_for_sms_conditions.nil?
        raise ArgumentError.new("Missing the required parameter 'wait_for_sms_conditions' when calling WaitForControllerApi.wait_for_sms")
      end
      # resource path
      local_var_path = "/waitForSms"

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
      post_body = wait_for_sms_conditions.to_json

      # return_type
      return_type = "Array(SmsPreview)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"WaitForControllerApi.wait_for_sms",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: WaitForControllerApi#wait_for_sms\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(SmsPreview).from_json(data), status_code, headers
    end
  end
end
