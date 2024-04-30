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

# Unit tests for ::ContactControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ContactControllerApi" do
  describe "test an instance of ContactControllerApi" do
    it "should create an instance of ContactControllerApi" do
      api_instance = ::ContactControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::ContactControllerApi)
    end
  end

  # unit tests for create_contact
  # Create a contact
  # @param create_contact_options 
  # @param [Hash] opts the optional parameters
  # @return [ContactDto]
  describe "create_contact test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_contact
  # Delete contact
  # @param contact_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_contact test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_all_contacts
  # Get all contacts
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index in list pagination
  # @option opts [Int32] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @option opts [String] :search Search terms
  # @return [PageContactProjection]
  describe "get_all_contacts test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_contact
  # Get contact
  # @param contact_id 
  # @param [Hash] opts the optional parameters
  # @return [ContactDto]
  describe "get_contact test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_contact_v_card
  # Get contact vCard vcf file
  # @param contact_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "get_contact_v_card test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_contacts
  # Get all contacts
  # @param [Hash] opts the optional parameters
  # @return [Array(ContactProjection)]
  describe "get_contacts test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
