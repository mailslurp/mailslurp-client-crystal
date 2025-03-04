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
  class BounceControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Filter a list of email recipients and remove those who have bounced
    # Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
    # @param filter_bounced_recipients_options [FilterBouncedRecipientsOptions] 
    # @return [FilterBouncedRecipientsResult]
    def filter_bounced_recipient(filter_bounced_recipients_options : FilterBouncedRecipientsOptions)
      data, _status_code, _headers = filter_bounced_recipient_with_http_info(filter_bounced_recipients_options)
      data
    end

    # Filter a list of email recipients and remove those who have bounced
    # Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
    # @param filter_bounced_recipients_options [FilterBouncedRecipientsOptions] 
    # @return [Array<(FilterBouncedRecipientsResult, Integer, Hash)>] FilterBouncedRecipientsResult data, response status code and response headers
    def filter_bounced_recipient_with_http_info(filter_bounced_recipients_options : FilterBouncedRecipientsOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.filter_bounced_recipient ..."}
      end
      # verify the required parameter "filter_bounced_recipients_options" is set
      if @api_client.config.client_side_validation && filter_bounced_recipients_options.nil?
        raise ArgumentError.new("Missing the required parameter 'filter_bounced_recipients_options' when calling BounceControllerApi.filter_bounced_recipient")
      end
      # resource path
      local_var_path = "/bounce/filter-recipients"

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
      post_body = filter_bounced_recipients_options.to_json

      # return_type
      return_type = "FilterBouncedRecipientsResult"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"BounceControllerApi.filter_bounced_recipient",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#filter_bounced_recipient\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return FilterBouncedRecipientsResult.from_json(data), status_code, headers
    end

    # Can account send email
    # Check if account block status prevents sending
    # @return [AccountBounceBlockDto]
    def get_account_bounce_block_status()
      data, _status_code, _headers = get_account_bounce_block_status_with_http_info()
      data
    end

    # Can account send email
    # Check if account block status prevents sending
    # @return [Array<(AccountBounceBlockDto, Integer, Hash)>] AccountBounceBlockDto data, response status code and response headers
    def get_account_bounce_block_status_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_account_bounce_block_status ..."}
      end
      # resource path
      local_var_path = "/bounce/account-block"

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
      return_type = "AccountBounceBlockDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_account_bounce_block_status",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_account_bounce_block_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return AccountBounceBlockDto.from_json(data), status_code, headers
    end

    # Get a bounced email.
    # Bounced emails are email you have sent that were rejected by a recipient
    # @param id [String] ID of the bounced email to fetch
    # @return [BouncedEmailDto]
    def get_bounced_email(id : String)
      data, _status_code, _headers = get_bounced_email_with_http_info(id)
      data
    end

    # Get a bounced email.
    # Bounced emails are email you have sent that were rejected by a recipient
    # @param id [String] ID of the bounced email to fetch
    # @return [Array<(BouncedEmailDto, Integer, Hash)>] BouncedEmailDto data, response status code and response headers
    def get_bounced_email_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_bounced_email ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling BounceControllerApi.get_bounced_email")
      end
      # resource path
      local_var_path = "/bounce/emails/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "BouncedEmailDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_bounced_email",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_bounced_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return BouncedEmailDto.from_json(data), status_code, headers
    end

    # Get paginated list of bounced emails.
    # Bounced emails are email you have sent that were rejected by a recipient
    # @return [PageBouncedEmail]
    def get_bounced_emails(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_bounced_emails_with_http_info(page, size, sort, since, before)
      data
    end

    # Get paginated list of bounced emails.
    # Bounced emails are email you have sent that were rejected by a recipient
    # @return [Array<(PageBouncedEmail, Integer, Hash)>] PageBouncedEmail data, response status code and response headers
    def get_bounced_emails_with_http_info(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_bounced_emails ..."}
      end
      if @api_client.config.client_side_validation && !size.nil? && size > 100
        raise ArgumentError.new("invalid value for \"size\" when calling BounceControllerApi.get_bounced_emails, must be smaller than or equal to 100.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/bounce/emails"

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
      return_type = "PageBouncedEmail"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_bounced_emails",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_bounced_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageBouncedEmail.from_json(data), status_code, headers
    end

    # Get a bounced email.
    # Bounced emails are email you have sent that were rejected by a recipient
    # @param id [String] ID of the bounced recipient
    # @return [BouncedRecipientDto]
    def get_bounced_recipient(id : String)
      data, _status_code, _headers = get_bounced_recipient_with_http_info(id)
      data
    end

    # Get a bounced email.
    # Bounced emails are email you have sent that were rejected by a recipient
    # @param id [String] ID of the bounced recipient
    # @return [Array<(BouncedRecipientDto, Integer, Hash)>] BouncedRecipientDto data, response status code and response headers
    def get_bounced_recipient_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_bounced_recipient ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling BounceControllerApi.get_bounced_recipient")
      end
      # resource path
      local_var_path = "/bounce/recipients/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "BouncedRecipientDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_bounced_recipient",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_bounced_recipient\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return BouncedRecipientDto.from_json(data), status_code, headers
    end

    # Get paginated list of bounced recipients.
    # Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
    # @return [PageBouncedRecipients]
    def get_bounced_recipients(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_bounced_recipients_with_http_info(page, size, sort, since, before)
      data
    end

    # Get paginated list of bounced recipients.
    # Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
    # @return [Array<(PageBouncedRecipients, Integer, Hash)>] PageBouncedRecipients data, response status code and response headers
    def get_bounced_recipients_with_http_info(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_bounced_recipients ..."}
      end
      if @api_client.config.client_side_validation && !size.nil? && size > 100
        raise ArgumentError.new("invalid value for \"size\" when calling BounceControllerApi.get_bounced_recipients, must be smaller than or equal to 100.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/bounce/recipients"

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
      return_type = "PageBouncedRecipients"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_bounced_recipients",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_bounced_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageBouncedRecipients.from_json(data), status_code, headers
    end

    # Get complaint
    # Get complaint
    # @param id [String] ID of the complaint
    # @return [Complaint]
    def get_complaint(id : String)
      data, _status_code, _headers = get_complaint_with_http_info(id)
      data
    end

    # Get complaint
    # Get complaint
    # @param id [String] ID of the complaint
    # @return [Array<(Complaint, Integer, Hash)>] Complaint data, response status code and response headers
    def get_complaint_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_complaint ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling BounceControllerApi.get_complaint")
      end
      # resource path
      local_var_path = "/bounce/complaints/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "Complaint"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_complaint",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_complaint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Complaint.from_json(data), status_code, headers
    end

    # Get paginated list of complaints.
    # SMTP complaints made against your account
    # @return [PageComplaint]
    def get_complaints(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_complaints_with_http_info(page, size, sort, since, before)
      data
    end

    # Get paginated list of complaints.
    # SMTP complaints made against your account
    # @return [Array<(PageComplaint, Integer, Hash)>] PageComplaint data, response status code and response headers
    def get_complaints_with_http_info(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_complaints ..."}
      end
      if @api_client.config.client_side_validation && !size.nil? && size > 100
        raise ArgumentError.new("invalid value for \"size\" when calling BounceControllerApi.get_complaints, must be smaller than or equal to 100.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/bounce/complaints"

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
      return_type = "PageComplaint"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_complaints",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_complaints\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageComplaint.from_json(data), status_code, headers
    end

    # Get paginated list of unsubscribed recipients.
    # Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
    # @return [PageListUnsubscribeRecipients]
    def get_list_unsubscribe_recipients(page : Int32?, size : Int32?, sort : String?, domain_id : String?)
      data, _status_code, _headers = get_list_unsubscribe_recipients_with_http_info(page, size, sort, domain_id)
      data
    end

    # Get paginated list of unsubscribed recipients.
    # Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
    # @return [Array<(PageListUnsubscribeRecipients, Integer, Hash)>] PageListUnsubscribeRecipients data, response status code and response headers
    def get_list_unsubscribe_recipients_with_http_info(page : Int32?, size : Int32?, sort : String?, domain_id : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: BounceControllerApi.get_list_unsubscribe_recipients ..."}
      end
      if @api_client.config.client_side_validation && !size.nil? && size > 100
        raise ArgumentError.new("invalid value for \"size\" when calling BounceControllerApi.get_list_unsubscribe_recipients, must be smaller than or equal to 100.")
      end

      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/bounce/list-unsubscribe-recipients"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort
      query_params[:"domainId"] = domain_id

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageListUnsubscribeRecipients"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"BounceControllerApi.get_list_unsubscribe_recipients",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: BounceControllerApi#get_list_unsubscribe_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageListUnsubscribeRecipients.from_json(data), status_code, headers
    end
  end
end
