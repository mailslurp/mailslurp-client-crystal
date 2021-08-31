# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for ::TrackingControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TrackingControllerApi" do
  describe "test an instance of TrackingControllerApi" do
    it "should create an instance of TrackingControllerApi" do
      api_instance = ::TrackingControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::TrackingControllerApi)
    end
  end

  # unit tests for create_tracking_pixel
  # Create tracking pixel
  # Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
  # @param create_tracking_pixel_options createTrackingPixelOptions
  # @param [Hash] opts the optional parameters
  # @return [TrackingPixelDto]
  describe "create_tracking_pixel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_all_tracking_pixels
  # Get tracking pixels
  # List tracking pixels in paginated form
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index in list pagination
  # @option opts [String] :search_filter Optional search filter
  # @option opts [Int32] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageTrackingPixelProjection]
  describe "get_all_tracking_pixels test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_tracking_pixel
  # Get pixel
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [TrackingPixelDto]
  describe "get_tracking_pixel test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
