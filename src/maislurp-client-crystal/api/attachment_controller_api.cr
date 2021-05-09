# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.0
#

require "uri"

module 
  class AttachmentControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an attachment
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @param attachment_id [String] ID of attachment
    # @return [nil]
    def delete_attachment(attachment_id : String)
      delete_attachment_with_http_info(attachment_id)
      nil
    end

    # Delete an attachment
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @param attachment_id [String] ID of attachment
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_attachment_with_http_info(attachment_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.delete_attachment ..."}
      end
      # verify the required parameter "attachment_id" is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        raise ArgumentError.new("Missing the required parameter 'attachment_id' when calling AttachmentControllerApi.delete_attachment")
      end
      # resource path
      local_var_path = "/attachments/{attachmentId}".sub("{" + "attachmentId" + "}", URI.encode(attachment_id.to_s))

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
                                                        :"AttachmentControllerApi.delete_attachment",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#delete_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
    # Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
    # @param attachment_id [String] ID of attachment
    # @return [DownloadAttachmentDto]
    def download_attachment_as_base64_encoded(attachment_id : String)
      data, _status_code, _headers = download_attachment_as_base64_encoded_with_http_info(attachment_id)
      data
    end

    # Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
    # Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the &#x60;downloadAttachment&#x60; method but allows some clients to get around issues with binary responses.
    # @param attachment_id [String] ID of attachment
    # @return [Array<(DownloadAttachmentDto, Integer, Hash)>] DownloadAttachmentDto data, response status code and response headers
    def download_attachment_as_base64_encoded_with_http_info(attachment_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.download_attachment_as_base64_encoded ..."}
      end
      # verify the required parameter "attachment_id" is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        raise ArgumentError.new("Missing the required parameter 'attachment_id' when calling AttachmentControllerApi.download_attachment_as_base64_encoded")
      end
      # resource path
      local_var_path = "/attachments/{attachmentId}/base64".sub("{" + "attachmentId" + "}", URI.encode(attachment_id.to_s))

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
      return_type = "DownloadAttachmentDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AttachmentControllerApi.download_attachment_as_base64_encoded",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#download_attachment_as_base64_encoded\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return DownloadAttachmentDto.from_json(data), status_code, headers
    end

    # Download attachments. Get email attachment bytes. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints.
    # Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
    # @param attachment_id [String] ID of attachment
    # @return [String]
    def download_attachment_as_bytes(attachment_id : String)
      data, _status_code, _headers = download_attachment_as_bytes_with_http_info(attachment_id)
      data
    end

    # Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
    # Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
    # @param attachment_id [String] ID of attachment
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def download_attachment_as_bytes_with_http_info(attachment_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.download_attachment_as_bytes ..."}
      end
      # verify the required parameter "attachment_id" is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        raise ArgumentError.new("Missing the required parameter 'attachment_id' when calling AttachmentControllerApi.download_attachment_as_bytes")
      end
      # resource path
      local_var_path = "/attachments/{attachmentId}/bytes".sub("{" + "attachmentId" + "}", URI.encode(attachment_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/octet-stream"])

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
                                                        :"AttachmentControllerApi.download_attachment_as_bytes",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#download_attachment_as_bytes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return String.from_json(data), status_code, headers
    end

    # Get email attachment metadata information
    # Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties `name` and `content-type` and `content-length` in bytes for a given attachment.
    # @param attachment_id [String] ID of attachment
    # @return [AttachmentMetaData]
    def get_attachment_info(attachment_id : String)
      data, _status_code, _headers = get_attachment_info_with_http_info(attachment_id)
      data
    end

    # Get email attachment metadata information
    # Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties &#x60;name&#x60; and &#x60;content-type&#x60; and &#x60;content-length&#x60; in bytes for a given attachment.
    # @param attachment_id [String] ID of attachment
    # @return [Array<(AttachmentMetaData, Integer, Hash)>] AttachmentMetaData data, response status code and response headers
    def get_attachment_info_with_http_info(attachment_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.get_attachment_info ..."}
      end
      # verify the required parameter "attachment_id" is set
      if @api_client.config.client_side_validation && attachment_id.nil?
        raise ArgumentError.new("Missing the required parameter 'attachment_id' when calling AttachmentControllerApi.get_attachment_info")
      end
      # resource path
      local_var_path = "/attachments/{attachmentId}/metadata".sub("{" + "attachmentId" + "}", URI.encode(attachment_id.to_s))

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
      return_type = "AttachmentMetaData"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AttachmentControllerApi.get_attachment_info",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#get_attachment_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return AttachmentMetaData.from_json(data), status_code, headers
    end

    # Get email attachments
    # Get all attachments in paginated response. Each entity contains meta data for the attachment such as `name` and `content-type`. Use the `attachmentId` and the download endpoints to get the file contents.
    # @return [PageAttachmentEntity]
    def get_attachments(page : Int32?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_attachments_with_http_info(page, size, sort)
      data
    end

    # Get email attachments
    # Get all attachments in paginated response. Each entity contains meta data for the attachment such as &#x60;name&#x60; and &#x60;content-type&#x60;. Use the &#x60;attachmentId&#x60; and the download endpoints to get the file contents.
    # @return [Array<(PageAttachmentEntity, Integer, Hash)>] PageAttachmentEntity data, response status code and response headers
    def get_attachments_with_http_info(page : Int32?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.get_attachments ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/attachments"

      # query parameters
      query_params = Hash(Symbol, String).new
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
      return_type = "PageAttachmentEntity"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"AttachmentControllerApi.get_attachments",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#get_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageAttachmentEntity.from_json(data), status_code, headers
    end

    # Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @param upload_options [UploadAttachmentOptions] uploadOptions
    # @return [Array(String)]
    def upload_attachment(upload_options : UploadAttachmentOptions)
      data, _status_code, _headers = upload_attachment_with_http_info(upload_options)
      data
    end

    # Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @param upload_options [UploadAttachmentOptions] uploadOptions
    # @return [Array<(Array(String), Integer, Hash)>] Array(String) data, response status code and response headers
    def upload_attachment_with_http_info(upload_options : UploadAttachmentOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.upload_attachment ..."}
      end
      # verify the required parameter "upload_options" is set
      if @api_client.config.client_side_validation && upload_options.nil?
        raise ArgumentError.new("Missing the required parameter 'upload_options' when calling AttachmentControllerApi.upload_attachment")
      end
      # resource path
      local_var_path = "/attachments"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = upload_options.to_json

      # return_type
      return_type = "Array(String)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"AttachmentControllerApi.upload_attachment",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#upload_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(String).from_json(data), status_code, headers
    end

    # Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @return [Array(String)]
    def upload_attachment_bytes(string : String?, filename : String?, byte_array : String?)
      data, _status_code, _headers = upload_attachment_bytes_with_http_info(string, filename, byte_array)
      data
    end

    # Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @return [Array<(Array(String), Integer, Hash)>] Array(String) data, response status code and response headers
    def upload_attachment_bytes_with_http_info(string : String?, filename : String?, byte_array : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.upload_attachment_bytes ..."}
      end
      # resource path
      local_var_path = "/attachments/bytes"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"String"] = string
      query_params[:"filename"] = filename

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/octet-stream"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = byte_array.to_json

      # return_type
      return_type = "Array(String)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"AttachmentControllerApi.upload_attachment_bytes",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#upload_attachment_bytes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(String).from_json(data), status_code, headers
    end

    # Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with `SendEmailOptions` when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @param file [File] file
    # @return [Array(String)]
    def upload_multipart_form(file : File, content_type : String?, filename : String?, x_filename : String?)
      data, _status_code, _headers = upload_multipart_form_with_http_info(file, content_type, filename, x_filename)
      data
    end

    # Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
    # Email attachments are essentially files with meta data. Files are byte arrays and the meta data is a content type and a filename. These properties allow email clients to display the filename and icon etc. When sending emails with attachments first upload each attachment with an upload endpoint. Record the returned attachment ID and use it with subsequent email sending. For legacy reasons the ID is returned as the first element in an array. Only a single ID is ever returned. To send the attachments pass a list of attachment IDs with &#x60;SendEmailOptions&#x60; when sending an email. Using the upload endpoints prior to sending mean attachments can easily be reused.
    # @param file [File] file
    # @return [Array<(Array(String), Integer, Hash)>] Array(String) data, response status code and response headers
    def upload_multipart_form_with_http_info(file : File, content_type : String?, filename : String?, x_filename : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: AttachmentControllerApi.upload_multipart_form ..."}
      end
      # verify the required parameter "file" is set
      if @api_client.config.client_side_validation && file.nil?
        raise ArgumentError.new("Missing the required parameter 'file' when calling AttachmentControllerApi.upload_multipart_form")
      end
      # resource path
      local_var_path = "/attachments/multipart"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"contentType"] = content_type
      query_params[:"filename"] = filename
      query_params[:"x-filename"] = x_filename

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["multipart/form-data"])

      # form parameters
      form_params = Hash(Symbol, String).new
      form_params[:"file"] = file

      # http body (model)
      post_body = nil

      # return_type
      return_type = "Array(String)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"AttachmentControllerApi.upload_multipart_form",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: AttachmentControllerApi#upload_multipart_form\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(String).from_json(data), status_code, headers
    end
  end
end
