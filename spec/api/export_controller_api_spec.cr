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

# Unit tests for ::ExportControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ExportControllerApi" do
  describe "test an instance of ExportControllerApi" do
    it "should create an instance of ExportControllerApi" do
      api_instance = ::ExportControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::ExportControllerApi)
    end
  end

  # unit tests for export_entities
  # Export inboxes link callable via browser
  # @param api_key apiKey
  # @param export_type exportType
  # @param output_format outputFormat
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :created_earliest_time createdEarliestTime
  # @option opts [Time] :created_oldest_time createdOldestTime
  # @option opts [Bool] :exclude_previously_exported excludePreviouslyExported
  # @option opts [String] :filter filter
  # @option opts [String] :list_separator_token listSeparatorToken
  # @return [String]
  describe "export_entities test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_export_link
  # Get export link
  # @param export_type exportType
  # @param export_options exportOptions
  # @param [Hash] opts the optional parameters
  # @option opts [String] :api_key apiKey
  # @return [ExportLink]
  describe "get_export_link test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
