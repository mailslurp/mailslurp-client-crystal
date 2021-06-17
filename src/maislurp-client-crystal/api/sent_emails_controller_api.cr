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
  class SentEmailsControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get sent email receipt
    # @param id [String] id
    # @return [SentEmailDto]
    def get_sent_email(id : String)
      data, _status_code, _headers = get_sent_email_with_http_info(id)
      data
    end

    # Get sent email receipt
    # @param id [String] id
    # @return [Array<(SentEmailDto, Integer, Hash)>] SentEmailDto data, response status code and response headers
    def get_sent_email_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: SentEmailsControllerApi.get_sent_email ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling SentEmailsControllerApi.get_sent_email")
      end
      # resource path
      local_var_path = "/sent/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "SentEmailDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SentEmailsControllerApi.get_sent_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SentEmailsControllerApi#get_sent_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return SentEmailDto.from_json(data), status_code, headers
    end

    # Get all sent emails in paginated form
    # @return [PageSentEmailProjection]
    def get_sent_emails(inbox_id : String?, page : Int32?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_sent_emails_with_http_info(inbox_id, page, size, sort)
      data
    end

    # Get all sent emails in paginated form
    # @return [Array<(PageSentEmailProjection, Integer, Hash)>] PageSentEmailProjection data, response status code and response headers
    def get_sent_emails_with_http_info(inbox_id : String?, page : Int32?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: SentEmailsControllerApi.get_sent_emails ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/sent"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"page"] = page
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
      return_type = "PageSentEmailProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SentEmailsControllerApi.get_sent_emails",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SentEmailsControllerApi#get_sent_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageSentEmailProjection.from_json(data), status_code, headers
    end

    # Get all sent organization emails in paginated form
    # @return [PageSentEmailProjection]
    def get_sent_organization_emails(inbox_id : String?, page : Int32?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_sent_organization_emails_with_http_info(inbox_id, page, size, sort)
      data
    end

    # Get all sent organization emails in paginated form
    # @return [Array<(PageSentEmailProjection, Integer, Hash)>] PageSentEmailProjection data, response status code and response headers
    def get_sent_organization_emails_with_http_info(inbox_id : String?, page : Int32?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: SentEmailsControllerApi.get_sent_organization_emails ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/sent/organization"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"inboxId"] = inbox_id
      query_params[:"page"] = page
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
      return_type = "PageSentEmailProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"SentEmailsControllerApi.get_sent_organization_emails",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: SentEmailsControllerApi#get_sent_organization_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageSentEmailProjection.from_json(data), status_code, headers
    end
  end
end
