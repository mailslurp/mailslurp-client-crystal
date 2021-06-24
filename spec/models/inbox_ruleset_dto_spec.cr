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

# Unit tests for ::InboxRulesetDto
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ::InboxRulesetDto do

  describe "test an instance of InboxRulesetDto" do
    it "should create an instance of InboxRulesetDto" do
      #instance = ::InboxRulesetDto.new
      #expect(instance).to be_instance_of(::InboxRulesetDto)
    end
  end
  describe "test attribute 'action'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["BLOCK", "ALLOW", "FORWARD"])
      # validator.allowable_values.each do |value|
      #   expect { instance.action = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'handler'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["EXCEPTION"])
      # validator.allowable_values.each do |value|
      #   expect { instance.handler = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'id'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'inbox_id'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
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

  describe "test attribute 'target'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
