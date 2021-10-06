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

# Unit tests for ::CommonActionsControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "CommonActionsControllerApi" do
  describe "test an instance of CommonActionsControllerApi" do
    it "should create an instance of CommonActionsControllerApi" do
      api_instance = ::CommonActionsControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::CommonActionsControllerApi)
    end
  end

  # unit tests for create_new_email_address
  # Create new random inbox
  # Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :allow_team_access allowTeamAccess
  # @option opts [String] :description description
  # @option opts [String] :email_address emailAddress
  # @option opts [Time] :expires_at expiresAt
  # @option opts [Int64] :expires_in expiresIn
  # @option opts [Bool] :favourite favourite
  # @option opts [String] :inbox_type inboxType
  # @option opts [String] :name name
  # @option opts [Array(String)] :tags tags
  # @option opts [Bool] :use_domain_pool useDomainPool
  # @return [Inbox]
  describe "create_new_email_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for create_new_email_address1
  # Create new random inbox
  # Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :allow_team_access allowTeamAccess
  # @option opts [String] :description description
  # @option opts [String] :email_address emailAddress
  # @option opts [Time] :expires_at expiresAt
  # @option opts [Int64] :expires_in expiresIn
  # @option opts [Bool] :favourite favourite
  # @option opts [String] :inbox_type inboxType
  # @option opts [String] :name name
  # @option opts [Array(String)] :tags tags
  # @option opts [Bool] :use_domain_pool useDomainPool
  # @return [Inbox]
  describe "create_new_email_address1 test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for empty_inbox
  # Delete all emails in an inbox
  # Deletes all emails
  # @param inbox_id inboxId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "empty_inbox test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for send_email_simple
  # Send an email
  # If no senderId or inboxId provided a random email address will be used to send from.
  # @param email_options emailOptions
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "send_email_simple test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
