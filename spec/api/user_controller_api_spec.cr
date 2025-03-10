# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for ::UserControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "UserControllerApi" do
  describe "test an instance of UserControllerApi" do
    it "should create an instance of UserControllerApi" do
      api_instance = ::UserControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::UserControllerApi)
    end
  end

  # unit tests for get_json_property_as_string
  # Utility function to extract properties from JSON objects in language where this is cumbersome.
  # @param property JSON property name or dot separated path selector such as &#x60;a.b.c&#x60;
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe "get_json_property_as_string test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_user_info
  # Get account information for your user
  # @param [Hash] opts the optional parameters
  # @return [UserInfoDto]
  describe "get_user_info test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
