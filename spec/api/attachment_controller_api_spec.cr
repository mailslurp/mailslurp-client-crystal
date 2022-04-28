# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for ::AttachmentControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "AttachmentControllerApi" do
  describe "test an instance of AttachmentControllerApi" do
    it "should create an instance of AttachmentControllerApi" do
      api_instance = ::AttachmentControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::AttachmentControllerApi)
    end
  end

  # unit tests for delete_all_attachments
  # Delete all attachments
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_all_attachments test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_attachment
  # Delete an attachment
  # @param attachment_id ID of attachment
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_attachment test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for download_attachment_as_base64_encoded
  # Get email attachment as base64 encoded string as alternative to binary responses. To read the content decode the Base64 encoded contents.
  # Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the &#x60;downloadAttachment&#x60; method but allows some clients to get around issues with binary responses.
  # @param attachment_id ID of attachment
  # @param [Hash] opts the optional parameters
  # @return [DownloadAttachmentDto]
  describe "download_attachment_as_base64_encoded test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for download_attachment_as_bytes
  # Download attachments. Get email attachment bytes. If you have trouble with byte responses try the &#x60;downloadAttachmentBase64&#x60; response endpoints.
  # Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  # @param attachment_id ID of attachment
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe "download_attachment_as_bytes test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_attachment
  # Get an attachment entity
  # @param attachment_id ID of attachment
  # @param [Hash] opts the optional parameters
  # @return [AttachmentEntity]
  describe "get_attachment test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_attachment_info
  # Get email attachment metadata information
  # Returns the metadata for an attachment. It is saved separately to the content of the attachment. Contains properties &#x60;name&#x60; and &#x60;content-type&#x60; and &#x60;content-length&#x60; in bytes for a given attachment.
  # @param attachment_id ID of attachment
  # @param [Hash] opts the optional parameters
  # @return [AttachmentMetaData]
  describe "get_attachment_info test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_attachments
  # Get email attachments
  # Get all attachments in paginated response. Each entity contains meta data for the attachment such as &#x60;name&#x60; and &#x60;content-type&#x60;. Use the &#x60;attachmentId&#x60; and the download endpoints to get the file contents.
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index event list pagination
  # @option opts [Int32] :size Optional page size event list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [String] :file_name_filter Optional file name and content type search filter
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @return [PageAttachmentEntity]
  describe "get_attachments test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for upload_attachment
  # Upload an attachment for sending using base64 file encoding. Returns an array whose first element is the ID of the uploaded attachment.
  # @param upload_attachment_options 
  # @param [Hash] opts the optional parameters
  # @return [Array(String)]
  describe "upload_attachment test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for upload_attachment_bytes
  # Upload an attachment for sending using file byte stream input octet stream. Returns an array whose first element is the ID of the uploaded attachment.
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content_type Optional contentType for file. For instance &#x60;application/pdf&#x60;
  # @option opts [String] :filename Optional filename to save upload with
  # @return [Array(String)]
  describe "upload_attachment_bytes test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for upload_multipart_form
  # Upload an attachment for sending using a Multipart Form request. Returns an array whose first element is the ID of the uploaded attachment.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content_type Optional content type of attachment
  # @option opts [String] :filename Optional name of file
  # @option opts [String] :x_filename Optional content type header of attachment
  # @option opts [InlineObject] :inline_object 
  # @return [Array(String)]
  describe "upload_multipart_form test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
