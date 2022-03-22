# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for ::ApiInternalControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ApiInternalControllerApi" do
  describe "test an instance of ApiInternalControllerApi" do
    it "should create an instance of ApiInternalControllerApi" do
      api_instance = ::ApiInternalControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::ApiInternalControllerApi)
    end
  end

  # unit tests for get_saml_user_or_create
  # @param key 
  # @param get_or_create_saml_user_options 
  # @param [Hash] opts the optional parameters
  # @return [UserDto]
  describe "get_saml_user_or_create test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
