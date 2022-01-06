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

# Unit tests for ::ExpiredControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ExpiredControllerApi" do
  describe "test an instance of ExpiredControllerApi" do
    it "should create an instance of ExpiredControllerApi" do
      api_instance = ::ExpiredControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::ExpiredControllerApi)
    end
  end

  # unit tests for get_expiration_defaults
  # Get default expiration settings
  # Return default times used for inbox expiration
  # @param [Hash] opts the optional parameters
  # @return [ExpirationDefaults]
  describe "get_expiration_defaults test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_expired_inbox_by_inbox_id
  # Get expired inbox record for a previously existing inbox
  # Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
  # @param inbox_id ID of inbox you want to retrieve (not the inbox ID)
  # @param [Hash] opts the optional parameters
  # @return [ExpiredInboxDto]
  describe "get_expired_inbox_by_inbox_id test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_expired_inbox_record
  # Get an expired inbox record
  # Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
  # @param id_of_the_expired_inbox_record_you_want_to_retrieve__this_is_different_from_the_id_of_the_inbox_you_are_interested_in__see_other_methods_for_getting_expired_inbox_record_for_an_inbox_inbox_id 
  # @param [Hash] opts the optional parameters
  # @return [ExpiredInboxDto]
  describe "get_expired_inbox_record test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_expired_inboxes
  # List records of expired inboxes
  # Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index in inbox sent email list pagination
  # @option opts [Int32] :size Optional page size in inbox sent email list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @return [PageExpiredInboxRecordProjection]
  describe "get_expired_inboxes test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
