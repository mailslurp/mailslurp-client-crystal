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

# Unit tests for ::ApiUserControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ApiUserControllerApi" do
  describe "test an instance of ApiUserControllerApi" do
    it "should create an instance of ApiUserControllerApi" do
      api_instance = ::ApiUserControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::ApiUserControllerApi)
    end
  end

  # unit tests for get_smtp_password
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe "get_smtp_password test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_smtp_username
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe "get_smtp_username test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_user_info
  # @param [Hash] opts the optional parameters
  # @return [UserInfoDto]
  describe "get_user_info test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
