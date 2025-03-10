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
  # @option opts [Bool] :allow_team_access 
  # @option opts [Bool] :use_domain_pool 
  # @option opts [Time] :expires_at 
  # @option opts [Int64] :expires_in 
  # @option opts [String] :email_address 
  # @option opts [String] :inbox_type 
  # @option opts [String] :description 
  # @option opts [String] :name 
  # @option opts [Array(String)] :tags 
  # @option opts [Bool] :favourite 
  # @option opts [Bool] :virtual_inbox 
  # @option opts [Bool] :use_short_address 
  # @option opts [String] :domain_name 
  # @option opts [String] :domain_id 
  # @option opts [String] :prefix 
  # @return [InboxDto]
  describe "create_new_email_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for create_random_inbox
  # Create new random inbox
  # Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Bool] :allow_team_access 
  # @option opts [Bool] :use_domain_pool 
  # @option opts [Time] :expires_at 
  # @option opts [Int64] :expires_in 
  # @option opts [String] :email_address 
  # @option opts [String] :inbox_type 
  # @option opts [String] :description 
  # @option opts [String] :name 
  # @option opts [Array(String)] :tags 
  # @option opts [Bool] :favourite 
  # @option opts [Bool] :virtual_inbox 
  # @option opts [Bool] :use_short_address 
  # @option opts [String] :domain_name 
  # @option opts [String] :domain_id 
  # @option opts [String] :prefix 
  # @return [InboxDto]
  describe "create_random_inbox test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_email_address
  # Delete inbox email address by inbox id
  # Deletes inbox email address
  # @param inbox_id ID of inbox to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_email_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for empty_inbox
  # Delete all emails in an inbox
  # Deletes all emails
  # @param inbox_id ID of inbox to empty
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "empty_inbox test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for send_email_query
  # Send an email using query parameters
  # If no senderId or inboxId provided a random email address will be used to send from. Ensure your parameters are URL encoded.
  # @param to Email address to send to
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sender_id ID of inbox to send from. If null an inbox will be created for sending
  # @option opts [String] :body Body of the email message. Supports HTML
  # @option opts [String] :subject Subject line of the email
  # @return [nil]
  describe "send_email_query test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for send_email_simple
  # Send an email
  # If no senderId or inboxId provided a random email address will be used to send from.
  # @param simple_send_email_options 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "send_email_simple test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
