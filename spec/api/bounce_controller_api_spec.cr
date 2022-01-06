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

# Unit tests for ::BounceControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "BounceControllerApi" do
  describe "test an instance of BounceControllerApi" do
    it "should create an instance of BounceControllerApi" do
      api_instance = ::BounceControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::BounceControllerApi)
    end
  end

  # unit tests for get_bounced_email
  # Get a bounced email.
  # Bounced emails are email you have sent that were rejected by a recipient
  # @param id ID of the bounced email to fetch
  # @param [Hash] opts the optional parameters
  # @return [BouncedEmailDto]
  describe "get_bounced_email test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_bounced_emails
  # Get paginated list of bounced emails.
  # Bounced emails are email you have sent that were rejected by a recipient
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index
  # @option opts [Int32] :size Optional page size 
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @return [PageBouncedEmail]
  describe "get_bounced_emails test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_bounced_recipient
  # Get a bounced email.
  # Bounced emails are email you have sent that were rejected by a recipient
  # @param id ID of the bounced recipient
  # @param [Hash] opts the optional parameters
  # @return [BouncedRecipientDto]
  describe "get_bounced_recipient test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_bounced_recipients
  # Get paginated list of bounced recipients.
  # Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index 
  # @option opts [Int32] :size Optional page size 
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @return [PageBouncedRecipients]
  describe "get_bounced_recipients test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
