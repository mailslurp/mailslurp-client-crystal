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
  class ApiInternalControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param key [String] 
    # @param get_or_create_saml_user_options [GetOrCreateSamlUserOptions] 
    # @return [UserDto]
    def get_saml_user_or_create(key : String, get_or_create_saml_user_options : GetOrCreateSamlUserOptions)
      data, _status_code, _headers = get_saml_user_or_create_with_http_info(key, get_or_create_saml_user_options)
      data
    end

    # @param key [String] 
    # @param get_or_create_saml_user_options [GetOrCreateSamlUserOptions] 
    # @return [Array<(UserDto, Integer, Hash)>] UserDto data, response status code and response headers
    def get_saml_user_or_create_with_http_info(key : String, get_or_create_saml_user_options : GetOrCreateSamlUserOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: ApiInternalControllerApi.get_saml_user_or_create ..."}
      end
      # verify the required parameter "key" is set
      if @api_client.config.client_side_validation && key.nil?
        raise ArgumentError.new("Missing the required parameter 'key' when calling ApiInternalControllerApi.get_saml_user_or_create")
      end
      # verify the required parameter "get_or_create_saml_user_options" is set
      if @api_client.config.client_side_validation && get_or_create_saml_user_options.nil?
        raise ArgumentError.new("Missing the required parameter 'get_or_create_saml_user_options' when calling ApiInternalControllerApi.get_saml_user_or_create")
      end
      # resource path
      local_var_path = "/internal/saml/user"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"key"] = key

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["*/*"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = get_or_create_saml_user_options.to_json

      # return_type
      return_type = "UserDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"ApiInternalControllerApi.get_saml_user_or_create",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: ApiInternalControllerApi#get_saml_user_or_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return UserDto.from_json(data), status_code, headers
    end
  end
end
