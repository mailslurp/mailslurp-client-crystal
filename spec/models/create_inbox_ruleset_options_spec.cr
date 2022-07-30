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

# Unit tests for ::CreateInboxRulesetOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ::CreateInboxRulesetOptions do

  describe "test an instance of CreateInboxRulesetOptions" do
    it "should create an instance of CreateInboxRulesetOptions" do
      #instance = ::CreateInboxRulesetOptions.new
      #expect(instance).to be_instance_of(::CreateInboxRulesetOptions)
    end
  end
  describe "test attribute 'scope'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["RECEIVING_EMAILS", "SENDING_EMAILS"])
      # validator.allowable_values.each do |value|
      #   expect { instance.scope = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'action'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["BLOCK", "ALLOW", "FILTER_REMOVE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.action = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'target'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
