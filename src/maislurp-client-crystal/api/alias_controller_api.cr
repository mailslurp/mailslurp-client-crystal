# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "uri"

module 
  class AliasControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
    # Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
    # @param create_alias_options [CreateAliasOptions] 
    # @return [AliasDto]
    def create_alias(create_alias_options : CreateAliasOptions)
      data, _status_code, _headers = create_alias_with_http_info(create_alias_options)
      data
    end

    # Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
    # Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
    # @param create_alias_options [CreateAliasOptions] 
    # @return [Array<(AliasDto, Integer, Hash)>] AliasDto data, response status code and response headers
    def create_alias_with_http_info(create_alias_options : CreateAliasOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.create_alias ..."}
      end
      # verify the required parameter "create_alias_options" is set
      if @api_client.config.client_side_validation && create_alias_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_alias_options' when calling AliasControllerApi.create_alias")
      end
      # resource path
      local_var_path = "/aliases"

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
      post_body = create_alias_options.to_json

      # return_type
      return_type = "AliasDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"AliasControllerApi.create_alias",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#create_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return AliasDto.from_json(data), status_code, headers
    end

    # Delete an email alias
    # @param alias_id [String] 
    # @return [nil]
    def delete_alias(alias_id : String)
      delete_alias_with_http_info(alias_id)
      nil
    end

    # Delete an email alias
    # @param alias_id [String] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_alias_with_http_info(alias_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.delete_alias ..."}
      end
      # verify the required parameter "alias_id" is set
      if @api_client.config.client_side_validation && alias_id.nil?
        raise ArgumentError.new("Missing the required parameter 'alias_id' when calling AliasControllerApi.delete_alias")
      end
      # resource path
      local_var_path = "/aliases/{aliasId}".sub("{" + "aliasId" + "}", URI.encode(alias_id.to_s))

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
                                                        :"AliasControllerApi.delete_alias",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#delete_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get an email alias
    # Get an email alias by ID
    # @param alias_id [String] 
    # @return [AliasDto]
    def get_alias(alias_id : String)
      data, _status_code, _headers = get_alias_with_http_info(alias_id)
      data
    end

    # Get an email alias
    # Get an email alias by ID
    # @param alias_id [String] 
    # @return [Array<(AliasDto, Integer, Hash)>] AliasDto data, response status code and response headers
    def get_alias_with_http_info(alias_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.get_alias ..."}
      end
      # verify the required parameter "alias_id" is set
      if @api_client.config.client_side_validation && alias_id.nil?
        raise ArgumentError.new("Missing the required parameter 'alias_id' when calling AliasControllerApi.get_alias")
      end
      # resource path
      local_var_path = "/aliases/{aliasId}".sub("{" + "aliasId" + "}", URI.encode(alias_id.to_s))

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
      return_type = "AliasDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AliasControllerApi.get_alias",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#get_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return AliasDto.from_json(data), status_code, headers
    end

    # Get emails for an alias
    # Get paginated emails for an alias by ID
    # @param alias_id [String] 
    # @return [PageEmailProjection]
    def get_alias_emails(alias_id : String, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_alias_emails_with_http_info(alias_id, page, size, sort, since, before)
      data
    end

    # Get emails for an alias
    # Get paginated emails for an alias by ID
    # @param alias_id [String] 
    # @return [Array<(PageEmailProjection, Integer, Hash)>] PageEmailProjection data, response status code and response headers
    def get_alias_emails_with_http_info(alias_id : String, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.get_alias_emails ..."}
      end
      # verify the required parameter "alias_id" is set
      if @api_client.config.client_side_validation && alias_id.nil?
        raise ArgumentError.new("Missing the required parameter 'alias_id' when calling AliasControllerApi.get_alias_emails")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/aliases/{aliasId}/emails".sub("{" + "aliasId" + "}", URI.encode(alias_id.to_s))

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
      return_type = "PageEmailProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AliasControllerApi.get_alias_emails",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#get_alias_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageEmailProjection.from_json(data), status_code, headers
    end

    # Get threads created for an alias
    # Returns threads created for an email alias in paginated form
    # @param alias_id [String] 
    # @return [PageThreadProjection]
    def get_alias_threads(alias_id : String, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_alias_threads_with_http_info(alias_id, page, size, sort, since, before)
      data
    end

    # Get threads created for an alias
    # Returns threads created for an email alias in paginated form
    # @param alias_id [String] 
    # @return [Array<(PageThreadProjection, Integer, Hash)>] PageThreadProjection data, response status code and response headers
    def get_alias_threads_with_http_info(alias_id : String, page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.get_alias_threads ..."}
      end
      # verify the required parameter "alias_id" is set
      if @api_client.config.client_side_validation && alias_id.nil?
        raise ArgumentError.new("Missing the required parameter 'alias_id' when calling AliasControllerApi.get_alias_threads")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/aliases/{aliasId}/threads".sub("{" + "aliasId" + "}", URI.encode(alias_id.to_s))

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
      return_type = "PageThreadProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AliasControllerApi.get_alias_threads",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#get_alias_threads\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageThreadProjection.from_json(data), status_code, headers
    end

    # Get all email aliases you have created
    # Get all email aliases in paginated form
    # @return [PageAlias]
    def get_aliases(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_aliases_with_http_info(page, size, sort, since, before)
      data
    end

    # Get all email aliases you have created
    # Get all email aliases in paginated form
    # @return [Array<(PageAlias, Integer, Hash)>] PageAlias data, response status code and response headers
    def get_aliases_with_http_info(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.get_aliases ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/aliases"

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
      return_type = "PageAlias"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AliasControllerApi.get_aliases",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#get_aliases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageAlias.from_json(data), status_code, headers
    end

    # Reply to an email
    # Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
    # @param alias_id [String] ID of the alias that email belongs to
    # @param email_id [String] ID of the email that should be replied to
    # @param reply_to_alias_email_options [ReplyToAliasEmailOptions] 
    # @return [SentEmailDto]
    def reply_to_alias_email(alias_id : String, email_id : String, reply_to_alias_email_options : ReplyToAliasEmailOptions)
      data, _status_code, _headers = reply_to_alias_email_with_http_info(alias_id, email_id, reply_to_alias_email_options)
      data
    end

    # Reply to an email
    # Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails &#x60;to&#x60;, &#x60;cc&#x60;, and &#x60;bcc&#x60;.
    # @param alias_id [String] ID of the alias that email belongs to
    # @param email_id [String] ID of the email that should be replied to
    # @param reply_to_alias_email_options [ReplyToAliasEmailOptions] 
    # @return [Array<(SentEmailDto, Integer, Hash)>] SentEmailDto data, response status code and response headers
    def reply_to_alias_email_with_http_info(alias_id : String, email_id : String, reply_to_alias_email_options : ReplyToAliasEmailOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.reply_to_alias_email ..."}
      end
      # verify the required parameter "alias_id" is set
      if @api_client.config.client_side_validation && alias_id.nil?
        raise ArgumentError.new("Missing the required parameter 'alias_id' when calling AliasControllerApi.reply_to_alias_email")
      end
      # verify the required parameter "email_id" is set
      if @api_client.config.client_side_validation && email_id.nil?
        raise ArgumentError.new("Missing the required parameter 'email_id' when calling AliasControllerApi.reply_to_alias_email")
      end
      # verify the required parameter "reply_to_alias_email_options" is set
      if @api_client.config.client_side_validation && reply_to_alias_email_options.nil?
        raise ArgumentError.new("Missing the required parameter 'reply_to_alias_email_options' when calling AliasControllerApi.reply_to_alias_email")
      end
      # resource path
      local_var_path = "/aliases/{aliasId}/emails/{emailId}".sub("{" + "aliasId" + "}", URI.encode(alias_id.to_s)).sub("{" + "emailId" + "}", URI.encode(email_id.to_s))

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
      post_body = reply_to_alias_email_options.to_json

      # return_type
      return_type = "SentEmailDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"AliasControllerApi.reply_to_alias_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#reply_to_alias_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SentEmailDto.from_json(data), status_code, headers
    end

    # Send an email from an alias inbox
    # Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
    # @param alias_id [String] 
    # @param send_email_options [SendEmailOptions] 
    # @return [SentEmailDto]
    def send_alias_email(alias_id : String, send_email_options : SendEmailOptions)
      data, _status_code, _headers = send_alias_email_with_http_info(alias_id, send_email_options)
      data
    end

    # Send an email from an alias inbox
    # Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
    # @param alias_id [String] 
    # @param send_email_options [SendEmailOptions] 
    # @return [Array<(SentEmailDto, Integer, Hash)>] SentEmailDto data, response status code and response headers
    def send_alias_email_with_http_info(alias_id : String, send_email_options : SendEmailOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.send_alias_email ..."}
      end
      # verify the required parameter "alias_id" is set
      if @api_client.config.client_side_validation && alias_id.nil?
        raise ArgumentError.new("Missing the required parameter 'alias_id' when calling AliasControllerApi.send_alias_email")
      end
      # verify the required parameter "send_email_options" is set
      if @api_client.config.client_side_validation && send_email_options.nil?
        raise ArgumentError.new("Missing the required parameter 'send_email_options' when calling AliasControllerApi.send_alias_email")
      end
      # resource path
      local_var_path = "/aliases/{aliasId}/emails".sub("{" + "aliasId" + "}", URI.encode(alias_id.to_s))

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
      post_body = send_email_options.to_json

      # return_type
      return_type = "SentEmailDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"AliasControllerApi.send_alias_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#send_alias_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SentEmailDto.from_json(data), status_code, headers
    end

    # Update an email alias
    # @param alias_id [String] 
    # @param update_alias_options [UpdateAliasOptions] 
    # @return [AliasDto]
    def update_alias(alias_id : String, update_alias_options : UpdateAliasOptions)
      data, _status_code, _headers = update_alias_with_http_info(alias_id, update_alias_options)
      data
    end

    # Update an email alias
    # @param alias_id [String] 
    # @param update_alias_options [UpdateAliasOptions] 
    # @return [Array<(AliasDto, Integer, Hash)>] AliasDto data, response status code and response headers
    def update_alias_with_http_info(alias_id : String, update_alias_options : UpdateAliasOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: AliasControllerApi.update_alias ..."}
      end
      # verify the required parameter "alias_id" is set
      if @api_client.config.client_side_validation && alias_id.nil?
        raise ArgumentError.new("Missing the required parameter 'alias_id' when calling AliasControllerApi.update_alias")
      end
      # verify the required parameter "update_alias_options" is set
      if @api_client.config.client_side_validation && update_alias_options.nil?
        raise ArgumentError.new("Missing the required parameter 'update_alias_options' when calling AliasControllerApi.update_alias")
      end
      # resource path
      local_var_path = "/aliases/{aliasId}".sub("{" + "aliasId" + "}", URI.encode(alias_id.to_s))

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
      post_body = update_alias_options.to_json

      # return_type
      return_type = "AliasDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"AliasControllerApi.update_alias",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AliasControllerApi#update_alias\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return AliasDto.from_json(data), status_code, headers
    end
  end
end
