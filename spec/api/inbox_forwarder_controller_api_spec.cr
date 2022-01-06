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

# Unit tests for ::InboxForwarderControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "InboxForwarderControllerApi" do
  describe "test an instance of InboxForwarderControllerApi" do
    it "should create an instance of InboxForwarderControllerApi" do
      api_instance = ::InboxForwarderControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::InboxForwarderControllerApi)
    end
  end

  # unit tests for create_new_inbox_forwarder
  # Create an inbox forwarder
  # Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  # @param inbox_id Inbox id to attach forwarder to
  # @param create_inbox_forwarder_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxForwarderDto]
  describe "create_new_inbox_forwarder test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_inbox_forwarder
  # Delete an inbox forwarder
  # Delete inbox forwarder
  # @param id ID of inbox forwarder
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_inbox_forwarder test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_inbox_forwarders
  # Delete inbox forwarders
  # Delete inbox forwarders. Accepts optional inboxId filter.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Optional inbox id to attach forwarder to
  # @return [nil]
  describe "delete_inbox_forwarders test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_inbox_forwarder
  # Get an inbox forwarder
  # Get inbox ruleset
  # @param id ID of inbox forwarder
  # @param [Hash] opts the optional parameters
  # @return [InboxForwarderDto]
  describe "get_inbox_forwarder test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_inbox_forwarders
  # List inbox forwarders
  # List all forwarders attached to an inbox
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inbox_id Optional inbox id to get forwarders from
  # @option opts [Int32] :page Optional page index in inbox forwarder list pagination
  # @option opts [Int32] :size Optional page size in inbox forwarder list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [String] :search_filter Optional search filter
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @return [PageInboxForwarderDto]
  describe "get_inbox_forwarders test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_inbox_forwarder
  # Test an inbox forwarder
  # Test an inbox forwarder
  # @param id ID of inbox forwarder
  # @param inbox_forwarder_test_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxForwarderTestResult]
  describe "test_inbox_forwarder test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_inbox_forwarders_for_inbox
  # Test inbox forwarders for inbox
  # Test inbox forwarders for inbox
  # @param inbox_id ID of inbox
  # @param inbox_forwarder_test_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxForwarderTestResult]
  describe "test_inbox_forwarders_for_inbox test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for test_new_inbox_forwarder
  # Test new inbox forwarder
  # Test new inbox forwarder
  # @param test_new_inbox_forwarder_options 
  # @param [Hash] opts the optional parameters
  # @return [InboxForwarderTestResult]
  describe "test_new_inbox_forwarder test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
