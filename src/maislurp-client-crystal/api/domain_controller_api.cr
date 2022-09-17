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
  class DomainControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add catch all wild card inbox to domain
    # Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
    # @param id [String] 
    # @return [DomainDto]
    def add_domain_wildcard_catch_all(id : String)
      data, _status_code, _headers = add_domain_wildcard_catch_all_with_http_info(id)
      data
    end

    # Add catch all wild card inbox to domain
    # Add a catch all inbox to a domain so that any emails sent to it that cannot be matched will be sent to the catch all inbox generated
    # @param id [String] 
    # @return [Array<(DomainDto, Integer, Hash)>] DomainDto data, response status code and response headers
    def add_domain_wildcard_catch_all_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: DomainControllerApi.add_domain_wildcard_catch_all ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling DomainControllerApi.add_domain_wildcard_catch_all")
      end
      # resource path
      local_var_path = "/domains/{id}/wildcard".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "DomainDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"DomainControllerApi.add_domain_wildcard_catch_all",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: DomainControllerApi#add_domain_wildcard_catch_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return DomainDto.from_json(data), status_code, headers
    end

    # Create Domain
    # Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider's DNS setup to verify the domain.
    # @param create_domain_options [CreateDomainOptions] 
    # @return [DomainDto]
    def create_domain(create_domain_options : CreateDomainOptions)
      data, _status_code, _headers = create_domain_with_http_info(create_domain_options)
      data
    end

    # Create Domain
    # Link a domain that you own with MailSlurp so you can create email addresses using it. Endpoint returns DNS records used for validation. You must add these verification records to your host provider&#39;s DNS setup to verify the domain.
    # @param create_domain_options [CreateDomainOptions] 
    # @return [Array<(DomainDto, Integer, Hash)>] DomainDto data, response status code and response headers
    def create_domain_with_http_info(create_domain_options : CreateDomainOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: DomainControllerApi.create_domain ..."}
      end
      # verify the required parameter "create_domain_options" is set
      if @api_client.config.client_side_validation && create_domain_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_domain_options' when calling DomainControllerApi.create_domain")
      end
      # resource path
      local_var_path = "/domains"

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
      post_body = create_domain_options.to_json

      # return_type
      return_type = "DomainDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"DomainControllerApi.create_domain",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: DomainControllerApi#create_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return DomainDto.from_json(data), status_code, headers
    end

    # Delete a domain
    # Delete a domain. This will disable any existing inboxes that use this domain.
    # @param id [String] 
    # @return [Array(String)]
    def delete_domain(id : String)
      data, _status_code, _headers = delete_domain_with_http_info(id)
      data
    end

    # Delete a domain
    # Delete a domain. This will disable any existing inboxes that use this domain.
    # @param id [String] 
    # @return [Array<(Array(String), Integer, Hash)>] Array(String) data, response status code and response headers
    def delete_domain_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: DomainControllerApi.delete_domain ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling DomainControllerApi.delete_domain")
      end
      # resource path
      local_var_path = "/domains/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "Array(String)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:DELETE,
                                                        local_var_path,
                                                        :"DomainControllerApi.delete_domain",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: DomainControllerApi#delete_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(String).from_json(data), status_code, headers
    end

    # Get a domain
    # Returns domain verification status and tokens for a given domain
    # @param id [String] 
    # @return [DomainDto]
    def get_domain(id : String)
      data, _status_code, _headers = get_domain_with_http_info(id)
      data
    end

    # Get a domain
    # Returns domain verification status and tokens for a given domain
    # @param id [String] 
    # @return [Array<(DomainDto, Integer, Hash)>] DomainDto data, response status code and response headers
    def get_domain_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: DomainControllerApi.get_domain ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling DomainControllerApi.get_domain")
      end
      # resource path
      local_var_path = "/domains/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "DomainDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"DomainControllerApi.get_domain",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: DomainControllerApi#get_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return DomainDto.from_json(data), status_code, headers
    end

    # Get domains
    # List all custom domains you have created
    # @return [Array(DomainPreview)]
    def get_domains()
      data, _status_code, _headers = get_domains_with_http_info()
      data
    end

    # Get domains
    # List all custom domains you have created
    # @return [Array<(Array(DomainPreview), Integer, Hash)>] Array(DomainPreview) data, response status code and response headers
    def get_domains_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: DomainControllerApi.get_domains ..."}
      end
      # resource path
      local_var_path = "/domains"

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
      return_type = "Array(DomainPreview)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"DomainControllerApi.get_domains",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: DomainControllerApi#get_domains\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(DomainPreview).from_json(data), status_code, headers
    end

    # Update a domain
    # Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
    # @param id [String] 
    # @param update_domain_options [UpdateDomainOptions] 
    # @return [DomainDto]
    def update_domain(id : String, update_domain_options : UpdateDomainOptions)
      data, _status_code, _headers = update_domain_with_http_info(id, update_domain_options)
      data
    end

    # Update a domain
    # Update values on a domain. Note you cannot change the domain name as it is immutable. Recreate the domain if you need to alter this.
    # @param id [String] 
    # @param update_domain_options [UpdateDomainOptions] 
    # @return [Array<(DomainDto, Integer, Hash)>] DomainDto data, response status code and response headers
    def update_domain_with_http_info(id : String, update_domain_options : UpdateDomainOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: DomainControllerApi.update_domain ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling DomainControllerApi.update_domain")
      end
      # verify the required parameter "update_domain_options" is set
      if @api_client.config.client_side_validation && update_domain_options.nil?
        raise ArgumentError.new("Missing the required parameter 'update_domain_options' when calling DomainControllerApi.update_domain")
      end
      # resource path
      local_var_path = "/domains/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      post_body = update_domain_options.to_json

      # return_type
      return_type = "DomainDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"DomainControllerApi.update_domain",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: DomainControllerApi#update_domain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return DomainDto.from_json(data), status_code, headers
    end
  end
end
