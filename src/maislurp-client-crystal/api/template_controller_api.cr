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
  class TemplateControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Template
    # Create an email template with variables for use with templated transactional emails.
    # @param create_template_options [CreateTemplateOptions] 
    # @return [TemplateDto]
    def create_template(create_template_options : CreateTemplateOptions)
      data, _status_code, _headers = create_template_with_http_info(create_template_options)
      data
    end

    # Create a Template
    # Create an email template with variables for use with templated transactional emails.
    # @param create_template_options [CreateTemplateOptions] 
    # @return [Array<(TemplateDto, Integer, Hash)>] TemplateDto data, response status code and response headers
    def create_template_with_http_info(create_template_options : CreateTemplateOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.create_template ..."}
      end
      # verify the required parameter "create_template_options" is set
      if @api_client.config.client_side_validation && create_template_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_template_options' when calling TemplateControllerApi.create_template")
      end
      # resource path
      local_var_path = "/templates"

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
      post_body = create_template_options.to_json

      # return_type
      return_type = "TemplateDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"TemplateControllerApi.create_template",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#create_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return TemplateDto.from_json(data), status_code, headers
    end

    # Delete email template
    # Delete template
    # @param template_id [String] Template ID
    # @return [nil]
    def delete_template(template_id : String)
      delete_template_with_http_info(template_id)
      nil
    end

    # Delete email template
    # Delete template
    # @param template_id [String] Template ID
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_template_with_http_info(template_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.delete_template ..."}
      end
      # verify the required parameter "template_id" is set
      if @api_client.config.client_side_validation && template_id.nil?
        raise ArgumentError.new("Missing the required parameter 'template_id' when calling TemplateControllerApi.delete_template")
      end
      # resource path
      local_var_path = "/templates/{templateId}".sub("{" + "templateId" + "}", URI.encode(template_id.to_s))

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
                                                        :"TemplateControllerApi.delete_template",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#delete_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # List templates
    # Get all templates in paginated format
    # @return [PageTemplateProjection]
    def get_all_templates(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_all_templates_with_http_info(page, size, sort, since, before)
      data
    end

    # List templates
    # Get all templates in paginated format
    # @return [Array<(PageTemplateProjection, Integer, Hash)>] PageTemplateProjection data, response status code and response headers
    def get_all_templates_with_http_info(page : Int32?, size : Int32?, sort : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.get_all_templates ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/templates/paginated"

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
      return_type = "PageTemplateProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"TemplateControllerApi.get_all_templates",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#get_all_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageTemplateProjection.from_json(data), status_code, headers
    end

    # Get template
    # Get email template
    # @param template_id [String] Template ID
    # @return [TemplateDto]
    def get_template(template_id : String)
      data, _status_code, _headers = get_template_with_http_info(template_id)
      data
    end

    # Get template
    # Get email template
    # @param template_id [String] Template ID
    # @return [Array<(TemplateDto, Integer, Hash)>] TemplateDto data, response status code and response headers
    def get_template_with_http_info(template_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.get_template ..."}
      end
      # verify the required parameter "template_id" is set
      if @api_client.config.client_side_validation && template_id.nil?
        raise ArgumentError.new("Missing the required parameter 'template_id' when calling TemplateControllerApi.get_template")
      end
      # resource path
      local_var_path = "/templates/{templateId}".sub("{" + "templateId" + "}", URI.encode(template_id.to_s))

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
      return_type = "TemplateDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"TemplateControllerApi.get_template",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#get_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return TemplateDto.from_json(data), status_code, headers
    end

    # Get template preview HTML
    # Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.
    # @param template_id [String] Template ID
    # @return [String]
    def get_template_preview_html(template_id : String)
      data, _status_code, _headers = get_template_preview_html_with_http_info(template_id)
      data
    end

    # Get template preview HTML
    # Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.
    # @param template_id [String] Template ID
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_template_preview_html_with_http_info(template_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.get_template_preview_html ..."}
      end
      # verify the required parameter "template_id" is set
      if @api_client.config.client_side_validation && template_id.nil?
        raise ArgumentError.new("Missing the required parameter 'template_id' when calling TemplateControllerApi.get_template_preview_html")
      end
      # resource path
      local_var_path = "/templates/{templateId}/preview/html".sub("{" + "templateId" + "}", URI.encode(template_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["text/html;charset=utf-8", "text/html"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "String"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"TemplateControllerApi.get_template_preview_html",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#get_template_preview_html\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return String.from_json(data), status_code, headers
    end

    # Get template preview Json
    # Get email template preview with passed template variables in JSON format. Pass template variables as query params.
    # @param template_id [String] Template ID
    # @return [TemplatePreview]
    def get_template_preview_json(template_id : String)
      data, _status_code, _headers = get_template_preview_json_with_http_info(template_id)
      data
    end

    # Get template preview Json
    # Get email template preview with passed template variables in JSON format. Pass template variables as query params.
    # @param template_id [String] Template ID
    # @return [Array<(TemplatePreview, Integer, Hash)>] TemplatePreview data, response status code and response headers
    def get_template_preview_json_with_http_info(template_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.get_template_preview_json ..."}
      end
      # verify the required parameter "template_id" is set
      if @api_client.config.client_side_validation && template_id.nil?
        raise ArgumentError.new("Missing the required parameter 'template_id' when calling TemplateControllerApi.get_template_preview_json")
      end
      # resource path
      local_var_path = "/templates/{templateId}/preview/json".sub("{" + "templateId" + "}", URI.encode(template_id.to_s))

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
      return_type = "TemplatePreview"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"TemplateControllerApi.get_template_preview_json",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#get_template_preview_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return TemplatePreview.from_json(data), status_code, headers
    end

    # List templates
    # Get all templates
    # @return [Array(TemplateProjection)]
    def get_templates()
      data, _status_code, _headers = get_templates_with_http_info()
      data
    end

    # List templates
    # Get all templates
    # @return [Array<(Array(TemplateProjection), Integer, Hash)>] Array(TemplateProjection) data, response status code and response headers
    def get_templates_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.get_templates ..."}
      end
      # resource path
      local_var_path = "/templates"

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
      return_type = "Array(TemplateProjection)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"TemplateControllerApi.get_templates",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(TemplateProjection).from_json(data), status_code, headers
    end

    # Update template
    # Update email template
    # @param template_id [String] Template ID
    # @param create_template_options [CreateTemplateOptions] 
    # @return [TemplateDto]
    def update_template(template_id : String, create_template_options : CreateTemplateOptions)
      data, _status_code, _headers = update_template_with_http_info(template_id, create_template_options)
      data
    end

    # Update template
    # Update email template
    # @param template_id [String] Template ID
    # @param create_template_options [CreateTemplateOptions] 
    # @return [Array<(TemplateDto, Integer, Hash)>] TemplateDto data, response status code and response headers
    def update_template_with_http_info(template_id : String, create_template_options : CreateTemplateOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: TemplateControllerApi.update_template ..."}
      end
      # verify the required parameter "template_id" is set
      if @api_client.config.client_side_validation && template_id.nil?
        raise ArgumentError.new("Missing the required parameter 'template_id' when calling TemplateControllerApi.update_template")
      end
      # verify the required parameter "create_template_options" is set
      if @api_client.config.client_side_validation && create_template_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_template_options' when calling TemplateControllerApi.update_template")
      end
      # resource path
      local_var_path = "/templates/{templateId}".sub("{" + "templateId" + "}", URI.encode(template_id.to_s))

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
      post_body = create_template_options.to_json

      # return_type
      return_type = "TemplateDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"TemplateControllerApi.update_template",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TemplateControllerApi#update_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return TemplateDto.from_json(data), status_code, headers
    end
  end
end
