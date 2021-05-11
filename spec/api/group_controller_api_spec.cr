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

# Unit tests for ::GroupControllerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "GroupControllerApi" do
  describe "test an instance of GroupControllerApi" do
    it "should create an instance of GroupControllerApi" do
      api_instance = ::GroupControllerApi.new
      # TODO expect(api_instance).to be_instance_of(::GroupControllerApi)
    end
  end

  # unit tests for add_contacts_to_group
  # Add contacts to a group
  # @param group_id groupId
  # @param update_group_contacts_option updateGroupContactsOption
  # @param [Hash] opts the optional parameters
  # @return [GroupContactsDto]
  describe "add_contacts_to_group test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for create_group
  # Create a group
  # @param create_group_options createGroupOptions
  # @param [Hash] opts the optional parameters
  # @return [GroupDto]
  describe "create_group test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for delete_group
  # Delete group
  # @param group_id groupId
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe "delete_group test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_all_groups
  # Get all Contact Groups in paginated format
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index in inbox list pagination
  # @option opts [Int32] :size Optional page size in inbox list pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageGroupProjection]
  describe "get_all_groups test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_group
  # Get group
  # @param group_id groupId
  # @param [Hash] opts the optional parameters
  # @return [GroupDto]
  describe "get_group test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_group_with_contacts
  # Get group and contacts belonging to it
  # @param group_id groupId
  # @param [Hash] opts the optional parameters
  # @return [GroupContactsDto]
  describe "get_group_with_contacts test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_group_with_contacts_paginated
  # Get group and paginated contacts belonging to it
  # @param group_id groupId
  # @param [Hash] opts the optional parameters
  # @option opts [Int32] :page Optional page index in group contact pagination
  # @option opts [Int32] :size Optional page size in group contact pagination
  # @option opts [String] :sort Optional createdAt sort direction ASC or DESC
  # @return [PageContactProjection]
  describe "get_group_with_contacts_paginated test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for get_groups
  # Get all groups
  # @param [Hash] opts the optional parameters
  # @return [Array(GroupProjection)]
  describe "get_groups test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  # unit tests for remove_contacts_from_group
  # Remove contacts from a group
  # @param group_id groupId
  # @param update_group_contacts_option updateGroupContactsOption
  # @param [Hash] opts the optional parameters
  # @return [GroupContactsDto]
  describe "remove_contacts_from_group test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

end
