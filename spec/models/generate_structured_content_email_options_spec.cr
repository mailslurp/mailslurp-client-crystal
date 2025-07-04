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

# Unit tests for ::GenerateStructuredContentEmailOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ::GenerateStructuredContentEmailOptions do

  describe "test an instance of GenerateStructuredContentEmailOptions" do
    it "should create an instance of GenerateStructuredContentEmailOptions" do
      #instance = ::GenerateStructuredContentEmailOptions.new
      #expect(instance).to be_instance_of(::GenerateStructuredContentEmailOptions)
    end
  end
  describe "test attribute 'email_id'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'content_selector'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Petstore::EnumTest::EnumAttributeValidator.new("String", ["RAW", "BODY", "BODY_ATTACHMENTS"])
      # validator.allowable_values.each do |value|
      #   expect { instance.content_selector = value }.not_to raise_error
      # end
    end
  end

  describe "test attribute 'instructions'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'output_schema'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transform_id'" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
