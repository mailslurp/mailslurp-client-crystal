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

# Unit tests for ::PhoneControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "PhoneControllerApi" do
  describe "test an instance of PhoneControllerApi" do
    it "should create an instance of PhoneControllerApi" do
      api_instance = ::PhoneControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::PhoneControllerApi)
    end
  end

  # unit tests for create_emergency_address
  # @param create_emergency_address_options 
  # @param [Hash] opts the optional parameters
  # @return [EmergencyAddress]
  describe "create_emergency_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_emergency_address
  # @param address_id 
  # @param [Hash] opts the optional parameters
  # @return [EmptyResponseDto]
  describe "delete_emergency_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_phone_number
  # @param phone_number_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_phone_number test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_emergency_address
  # @param address_id 
  # @param [Hash] opts the optional parameters
  # @return [EmergencyAddress]
  describe "get_emergency_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_emergency_addresses
  # @param [Hash] opts the optional parameters
  # @return [Array(EmergencyAddressDto)]
  describe "get_emergency_addresses test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_phone_number
  # @param phone_number_id 
  # @param [Hash] opts the optional parameters
  # @return [PhoneNumberDto]
  describe "get_phone_number test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_phone_numbers
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index for list pagination
  # @option opts [Int32] :size Optional page size for list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @return [PagePhoneNumberProjection]
  describe "get_phone_numbers test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_phone_plans
  # @param [Hash] opts the optional parameters
  # @return [Array(PhonePlanDto)]
  describe "get_phone_plans test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
