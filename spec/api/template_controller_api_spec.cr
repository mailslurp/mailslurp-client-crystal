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

# Unit tests for ::TemplateControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "TemplateControllerApi" do
  describe "test an instance of TemplateControllerApi" do
    it "should create an instance of TemplateControllerApi" do
      api_instance = ::TemplateControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::TemplateControllerApi)
    end
  end

  # unit tests for create_template
  # Create a Template
  # @param create_template_options createTemplateOptions
  # @param [Hash] opts the optional parameters
  # @return [TemplateDto]
  describe "create_template test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_template
  # Delete Template
  # @param template_id TemplateId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_template test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_all_templates
  # Get all Templates in paginated format
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index in inbox list pagination
  # @option opts [Int32] :size Optional page size in inbox list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageTemplateProjection]
  describe "get_all_templates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_template
  # Get Template
  # @param template_id TemplateId
  # @param [Hash] opts the optional parameters
  # @return [TemplateDto]
  describe "get_template test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_templates
  # Get all Templates
  # @param [Hash] opts the optional parameters
  # @return [Array(TemplateProjection)]
  describe "get_templates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
