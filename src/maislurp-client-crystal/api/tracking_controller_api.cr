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
  class TrackingControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create tracking pixel
    # Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
    # @param create_tracking_pixel_options [CreateTrackingPixelOptions] 
    # @return [TrackingPixelDto]
    def create_tracking_pixel(create_tracking_pixel_options : CreateTrackingPixelOptions)
      data, _status_code, _headers = create_tracking_pixel_with_http_info(create_tracking_pixel_options)
      data
    end

    # Create tracking pixel
    # Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
    # @param create_tracking_pixel_options [CreateTrackingPixelOptions] 
    # @return [Array<(TrackingPixelDto, Integer, Hash)>] TrackingPixelDto data, response status code and response headers
    def create_tracking_pixel_with_http_info(create_tracking_pixel_options : CreateTrackingPixelOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: TrackingControllerApi.create_tracking_pixel ..."}
      end
      # verify the required parameter "create_tracking_pixel_options" is set
      if @api_client.config.client_side_validation && create_tracking_pixel_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_tracking_pixel_options' when calling TrackingControllerApi.create_tracking_pixel")
      end
      # resource path
      local_var_path = "/tracking/pixels"

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
      post_body = create_tracking_pixel_options.to_json

      # return_type
      return_type = "TrackingPixelDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"TrackingControllerApi.create_tracking_pixel",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TrackingControllerApi#create_tracking_pixel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return TrackingPixelDto.from_json(data), status_code, headers
    end

    # Get tracking pixels
    # List tracking pixels in paginated form
    # @return [PageTrackingPixelProjection]
    def get_all_tracking_pixels(page : Int32?, size : Int32?, sort : String?, search_filter : String?, since : Time?, before : Time?)
      data, _status_code, _headers = get_all_tracking_pixels_with_http_info(page, size, sort, search_filter, since, before)
      data
    end

    # Get tracking pixels
    # List tracking pixels in paginated form
    # @return [Array<(PageTrackingPixelProjection, Integer, Hash)>] PageTrackingPixelProjection data, response status code and response headers
    def get_all_tracking_pixels_with_http_info(page : Int32?, size : Int32?, sort : String?, search_filter : String?, since : Time?, before : Time?)
      if @api_client.config.debugging
        Log.debug {"Calling API: TrackingControllerApi.get_all_tracking_pixels ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/tracking/pixels"

      # query parameters
      query_params = Hash(Symbol, String).new
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
      return_type = "PageTrackingPixelProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"TrackingControllerApi.get_all_tracking_pixels",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TrackingControllerApi#get_all_tracking_pixels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageTrackingPixelProjection.from_json(data), status_code, headers
    end

    # Get pixel
    # @param id [String] 
    # @return [TrackingPixelDto]
    def get_tracking_pixel(id : String)
      data, _status_code, _headers = get_tracking_pixel_with_http_info(id)
      data
    end

    # Get pixel
    # @param id [String] 
    # @return [Array<(TrackingPixelDto, Integer, Hash)>] TrackingPixelDto data, response status code and response headers
    def get_tracking_pixel_with_http_info(id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: TrackingControllerApi.get_tracking_pixel ..."}
      end
      # verify the required parameter "id" is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError.new("Missing the required parameter 'id' when calling TrackingControllerApi.get_tracking_pixel")
      end
      # resource path
      local_var_path = "/tracking/pixels/{id}".sub("{" + "id" + "}", URI.encode(id.to_s))

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
      return_type = "TrackingPixelDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"TrackingControllerApi.get_tracking_pixel",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: TrackingControllerApi#get_tracking_pixel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return TrackingPixelDto.from_json(data), status_code, headers
    end
  end
end
