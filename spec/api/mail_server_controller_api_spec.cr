# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.0
#

require "../spec_helper"
require "json"
require "time"

# Unit tests for ::MailServerControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "MailServerControllerApi" do
  describe "test an instance of MailServerControllerApi" do
    it "should create an instance of MailServerControllerApi" do
      api_instance = ::MailServerControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::MailServerControllerApi)
    end
  end

  # unit tests for describe_mail_server_domain
  # Get DNS Mail Server records for a domain
  # @param describe_options describeOptions
  # @param [Hash] opts the optional parameters
  # @return [DescribeMailServerDomainResult]
  describe "describe_mail_server_domain test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_dns_lookup
  # Lookup DNS records for a domain
  # @param dns_lookup_options dnsLookupOptions
  # @param [Hash] opts the optional parameters
  # @return [DNSLookupResults]
  describe "get_dns_lookup test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_ip_address
  # Get IP address for a domain
  # @param name name
  # @param [Hash] opts the optional parameters
  # @return [IPAddressResult]
  describe "get_ip_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for verify_email_address
  # Verify the existence of an email address at a given mail server.
  # @param verify_options verifyOptions
  # @param [Hash] opts the optional parameters
  # @return [EmailVerificationResult]
  describe "verify_email_address test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
