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
  # Create an email template with variables for use with templated transactional emails.
  # @param create_template_options 
  # @param [Hash] opts the optional parameters
  # @return [TemplateDto]
  describe "create_template test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_template
  # Delete email template
  # Delete template
  # @param template_id Template ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_template test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_all_templates
  # List templates
  # Get all templates in paginated format
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index in list pagination
  # @option opts [Int32] :size Optional page size in list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @option opts [Time] :since Filter by created at after the given timestamp
  # @option opts [Time] :before Filter by created at before the given timestamp
  # @return [PageTemplateProjection]
  describe "get_all_templates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_template
  # Get template
  # Get email template
  # @param template_id Template ID
  # @param [Hash] opts the optional parameters
  # @return [TemplateDto]
  describe "get_template test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_template_preview_html
  # Get template preview HTML
  # Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.
  # @param template_id Template ID
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe "get_template_preview_html test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_template_preview_json
  # Get template preview Json
  # Get email template preview with passed template variables in JSON format. Pass template variables as query params.
  # @param template_id Template ID
  # @param [Hash] opts the optional parameters
  # @return [TemplatePreview]
  describe "get_template_preview_json test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_templates
  # List templates
  # Get all templates
  # @param [Hash] opts the optional parameters
  # @return [Array(TemplateProjection)]
  describe "get_templates test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for update_template
  # Update template
  # Update email template
  # @param template_id Template ID
  # @param create_template_options 
  # @param [Hash] opts the optional parameters
  # @return [TemplateDto]
  describe "update_template test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
