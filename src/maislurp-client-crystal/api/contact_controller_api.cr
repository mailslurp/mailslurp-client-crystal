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
  class ContactControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a contact
    # @param create_contact_options [CreateContactOptions] 
    # @return [ContactDto]
    def create_contact(create_contact_options : CreateContactOptions)
      data, _status_code, _headers = create_contact_with_http_info(create_contact_options)
      data
    end

    # Create a contact
    # @param create_contact_options [CreateContactOptions] 
    # @return [Array<(ContactDto, Integer, Hash)>] ContactDto data, response status code and response headers
    def create_contact_with_http_info(create_contact_options : CreateContactOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: ContactControllerApi.create_contact ..."}
      end
      # verify the required parameter "create_contact_options" is set
      if @api_client.config.client_side_validation && create_contact_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_contact_options' when calling ContactControllerApi.create_contact")
      end
      # resource path
      local_var_path = "/contacts"

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
      post_body = create_contact_options.to_json

      # return_type
      return_type = "ContactDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"ContactControllerApi.create_contact",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ContactControllerApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return ContactDto.from_json(data), status_code, headers
    end

    # Delete contact
    # @param contact_id [String] 
    # @return [nil]
    def delete_contact(contact_id : String)
      delete_contact_with_http_info(contact_id)
      nil
    end

    # Delete contact
    # @param contact_id [String] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_contact_with_http_info(contact_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: ContactControllerApi.delete_contact ..."}
      end
      # verify the required parameter "contact_id" is set
      if @api_client.config.client_side_validation && contact_id.nil?
        raise ArgumentError.new("Missing the required parameter 'contact_id' when calling ContactControllerApi.delete_contact")
      end
      # resource path
      local_var_path = "/contacts/{contactId}".sub("{" + "contactId" + "}", URI.encode(contact_id.to_s))

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
                                                        :"ContactControllerApi.delete_contact",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ContactControllerApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get all contacts
    # @return [PageContactProjection]
    def get_all_contacts(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?, search : String?)
      data, _status_code, _headers = get_all_contacts_with_http_info(page, size, sort, since, before, search)
      data
    end

    # Get all contacts
    # @return [Array<(PageContactProjection, Integer, Hash)>] PageContactProjection data, response status code and response headers
    def get_all_contacts_with_http_info(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?, search : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: ContactControllerApi.get_all_contacts ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/contacts/paginated"

      # query parameters
      query_params = Hash(Symbol, String).new
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
      return_type = "PageContactProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ContactControllerApi.get_all_contacts",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ContactControllerApi#get_all_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageContactProjection.from_json(data), status_code, headers
    end

    # Get contact
    # @param contact_id [String] 
    # @return [ContactDto]
    def get_contact(contact_id : String)
      data, _status_code, _headers = get_contact_with_http_info(contact_id)
      data
    end

    # Get contact
    # @param contact_id [String] 
    # @return [Array<(ContactDto, Integer, Hash)>] ContactDto data, response status code and response headers
    def get_contact_with_http_info(contact_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: ContactControllerApi.get_contact ..."}
      end
      # verify the required parameter "contact_id" is set
      if @api_client.config.client_side_validation && contact_id.nil?
        raise ArgumentError.new("Missing the required parameter 'contact_id' when calling ContactControllerApi.get_contact")
      end
      # resource path
      local_var_path = "/contacts/{contactId}".sub("{" + "contactId" + "}", URI.encode(contact_id.to_s))

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
      return_type = "ContactDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ContactControllerApi.get_contact",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ContactControllerApi#get_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return ContactDto.from_json(data), status_code, headers
    end

    # Get contact vCard vcf file
    # @param contact_id [String] 
    # @return [nil]
    def get_contact_v_card(contact_id : String)
      get_contact_v_card_with_http_info(contact_id)
      nil
    end

    # Get contact vCard vcf file
    # @param contact_id [String] 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def get_contact_v_card_with_http_info(contact_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: ContactControllerApi.get_contact_v_card ..."}
      end
      # verify the required parameter "contact_id" is set
      if @api_client.config.client_side_validation && contact_id.nil?
        raise ArgumentError.new("Missing the required parameter 'contact_id' when calling ContactControllerApi.get_contact_v_card")
      end
      # resource path
      local_var_path = "/contacts/{contactId}/download".sub("{" + "contactId" + "}", URI.encode(contact_id.to_s))

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

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ContactControllerApi.get_contact_v_card",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ContactControllerApi#get_contact_v_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get all contacts
    # @return [Array(ContactProjection)]
    def get_contacts()
      data, _status_code, _headers = get_contacts_with_http_info()
      data
    end

    # Get all contacts
    # @return [Array<(Array(ContactProjection), Integer, Hash)>] Array(ContactProjection) data, response status code and response headers
    def get_contacts_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: ContactControllerApi.get_contacts ..."}
      end
      # resource path
      local_var_path = "/contacts"

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
      return_type = "Array(ContactProjection)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"ContactControllerApi.get_contacts",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ContactControllerApi#get_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(ContactProjection).from_json(data), status_code, headers
    end
  end
end
