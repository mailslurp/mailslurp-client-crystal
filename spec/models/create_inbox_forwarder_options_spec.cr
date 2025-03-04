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

# Unit tests for ::CreateInboxForwarderOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ::CreateInboxForwarderOptions do

  describe "test an instance of CreateInboxForwarderOptions" do
    it "should create an instance of CreateInboxForwarderOptions" do
      #instance = ::CreateInboxForwarderOptions.new
      #expect(instance).to be_instance_of(::CreateInboxForwarderOptions)
    end
  end
  describe "test attribute 'field'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["RECIPIENTS", "SENDER", "SUBJECT", "ATTACHMENTS"])
      # validator.allowable_values.each do |value|
      #   expect { instance.field = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'match'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'forward_to_recipients'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
