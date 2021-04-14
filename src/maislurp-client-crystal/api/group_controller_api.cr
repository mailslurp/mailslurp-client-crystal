# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.   ## Resources - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.0
#

require "uri"

module 
  class GroupControllerApi
    property api_client : ApiClient

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add contacts to a group
    # @param group_id [String] groupId
    # @param update_group_contacts_option [UpdateGroupContacts] updateGroupContactsOption
    # @return [GroupContactsDto]
    def add_contacts_to_group(group_id : String, update_group_contacts_option : UpdateGroupContacts)
      data, _status_code, _headers = add_contacts_to_group_with_http_info(group_id, update_group_contacts_option)
      data
    end

    # Add contacts to a group
    # @param group_id [String] groupId
    # @param update_group_contacts_option [UpdateGroupContacts] updateGroupContactsOption
    # @return [Array<(GroupContactsDto, Integer, Hash)>] GroupContactsDto data, response status code and response headers
    def add_contacts_to_group_with_http_info(group_id : String, update_group_contacts_option : UpdateGroupContacts)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.add_contacts_to_group ..."}
      end
      # verify the required parameter "group_id" is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError.new("Missing the required parameter 'group_id' when calling GroupControllerApi.add_contacts_to_group")
      end
      # verify the required parameter "update_group_contacts_option" is set
      if @api_client.config.client_side_validation && update_group_contacts_option.nil?
        raise ArgumentError.new("Missing the required parameter 'update_group_contacts_option' when calling GroupControllerApi.add_contacts_to_group")
      end
      # resource path
      local_var_path = "/groups/{groupId}/contacts".sub("{" + "groupId" + "}", URI.encode(group_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = update_group_contacts_option.to_json

      # return_type
      return_type = "GroupContactsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:PUT,
                                                        local_var_path,
                                                        :"GroupControllerApi.add_contacts_to_group",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#add_contacts_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GroupContactsDto.from_json(data), status_code, headers
    end

    # Create a group
    # @param create_group_options [CreateGroupOptions] createGroupOptions
    # @return [GroupDto]
    def create_group(create_group_options : CreateGroupOptions)
      data, _status_code, _headers = create_group_with_http_info(create_group_options)
      data
    end

    # Create a group
    # @param create_group_options [CreateGroupOptions] createGroupOptions
    # @return [Array<(GroupDto, Integer, Hash)>] GroupDto data, response status code and response headers
    def create_group_with_http_info(create_group_options : CreateGroupOptions)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.create_group ..."}
      end
      # verify the required parameter "create_group_options" is set
      if @api_client.config.client_side_validation && create_group_options.nil?
        raise ArgumentError.new("Missing the required parameter 'create_group_options' when calling GroupControllerApi.create_group")
      end
      # resource path
      local_var_path = "/groups"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = create_group_options.to_json

      # return_type
      return_type = "GroupDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:POST,
                                                        local_var_path,
                                                        :"GroupControllerApi.create_group",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GroupDto.from_json(data), status_code, headers
    end

    # Delete group
    # @param group_id [String] groupId
    # @return [nil]
    def delete_group(group_id : String)
      delete_group_with_http_info(group_id)
      nil
    end

    # Delete group
    # @param group_id [String] groupId
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_with_http_info(group_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.delete_group ..."}
      end
      # verify the required parameter "group_id" is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError.new("Missing the required parameter 'group_id' when calling GroupControllerApi.delete_group")
      end
      # resource path
      local_var_path = "/groups/{groupId}".sub("{" + "groupId" + "}", URI.encode(group_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = nil

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:DELETE,
                                                        local_var_path,
                                                        :"GroupControllerApi.delete_group",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return nil, status_code, headers
    end

    # Get all Contact Groups in paginated format
    # @return [PageGroupProjection]
    def get_all_groups(page : Int32?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_all_groups_with_http_info(page, size, sort)
      data
    end

    # Get all Contact Groups in paginated format
    # @return [Array<(PageGroupProjection, Integer, Hash)>] PageGroupProjection data, response status code and response headers
    def get_all_groups_with_http_info(page : Int32?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.get_all_groups ..."}
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/groups/paginated"

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageGroupProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"GroupControllerApi.get_all_groups",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#get_all_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageGroupProjection.from_json(data), status_code, headers
    end

    # Get group
    # @param group_id [String] groupId
    # @return [GroupDto]
    def get_group(group_id : String)
      data, _status_code, _headers = get_group_with_http_info(group_id)
      data
    end

    # Get group
    # @param group_id [String] groupId
    # @return [Array<(GroupDto, Integer, Hash)>] GroupDto data, response status code and response headers
    def get_group_with_http_info(group_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.get_group ..."}
      end
      # verify the required parameter "group_id" is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError.new("Missing the required parameter 'group_id' when calling GroupControllerApi.get_group")
      end
      # resource path
      local_var_path = "/groups/{groupId}".sub("{" + "groupId" + "}", URI.encode(group_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "GroupDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"GroupControllerApi.get_group",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#get_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GroupDto.from_json(data), status_code, headers
    end

    # Get group and contacts belonging to it
    # @param group_id [String] groupId
    # @return [GroupContactsDto]
    def get_group_with_contacts(group_id : String)
      data, _status_code, _headers = get_group_with_contacts_with_http_info(group_id)
      data
    end

    # Get group and contacts belonging to it
    # @param group_id [String] groupId
    # @return [Array<(GroupContactsDto, Integer, Hash)>] GroupContactsDto data, response status code and response headers
    def get_group_with_contacts_with_http_info(group_id : String)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.get_group_with_contacts ..."}
      end
      # verify the required parameter "group_id" is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError.new("Missing the required parameter 'group_id' when calling GroupControllerApi.get_group_with_contacts")
      end
      # resource path
      local_var_path = "/groups/{groupId}/contacts".sub("{" + "groupId" + "}", URI.encode(group_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "GroupContactsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"GroupControllerApi.get_group_with_contacts",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#get_group_with_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GroupContactsDto.from_json(data), status_code, headers
    end

    # Get group and paginated contacts belonging to it
    # @param group_id [String] groupId
    # @return [PageContactProjection]
    def get_group_with_contacts_paginated(group_id : String, page : Int32?, size : Int32?, sort : String?)
      data, _status_code, _headers = get_group_with_contacts_paginated_with_http_info(group_id, page, size, sort)
      data
    end

    # Get group and paginated contacts belonging to it
    # @param group_id [String] groupId
    # @return [Array<(PageContactProjection, Integer, Hash)>] PageContactProjection data, response status code and response headers
    def get_group_with_contacts_paginated_with_http_info(group_id : String, page : Int32?, size : Int32?, sort : String?)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.get_group_with_contacts_paginated ..."}
      end
      # verify the required parameter "group_id" is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError.new("Missing the required parameter 'group_id' when calling GroupControllerApi.get_group_with_contacts_paginated")
      end
      allowable_values = ["ASC", "DESC"]
      if @api_client.config.client_side_validation && sort && !allowable_values.includes?(sort)
        raise ArgumentError.new("invalid value for \"sort\", must be one of #{allowable_values}")
      end
      # resource path
      local_var_path = "/groups/{groupId}/contacts-paginated".sub("{" + "groupId" + "}", URI.encode(group_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new
      query_params[:"page"] = page
      query_params[:"size"] = size
      query_params[:"sort"] = sort

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "PageContactProjection"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"GroupControllerApi.get_group_with_contacts_paginated",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#get_group_with_contacts_paginated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return PageContactProjection.from_json(data), status_code, headers
    end

    # Get all groups
    # @return [Array(GroupProjection)]
    def get_groups()
      data, _status_code, _headers = get_groups_with_http_info()
      data
    end

    # Get all groups
    # @return [Array<(Array(GroupProjection), Integer, Hash)>] Array(GroupProjection) data, response status code and response headers
    def get_groups_with_http_info()
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.get_groups ..."}
      end
      # resource path
      local_var_path = "/groups"

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = nil

      # return_type
      return_type = "Array(GroupProjection)"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:GET,
                                                        local_var_path,
                                                        :"GroupControllerApi.get_groups",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#get_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return Array(GroupProjection).from_json(data), status_code, headers
    end

    # Remove contacts from a group
    # @param group_id [String] groupId
    # @param update_group_contacts_option [UpdateGroupContacts] updateGroupContactsOption
    # @return [GroupContactsDto]
    def remove_contacts_from_group(group_id : String, update_group_contacts_option : UpdateGroupContacts)
      data, _status_code, _headers = remove_contacts_from_group_with_http_info(group_id, update_group_contacts_option)
      data
    end

    # Remove contacts from a group
    # @param group_id [String] groupId
    # @param update_group_contacts_option [UpdateGroupContacts] updateGroupContactsOption
    # @return [Array<(GroupContactsDto, Integer, Hash)>] GroupContactsDto data, response status code and response headers
    def remove_contacts_from_group_with_http_info(group_id : String, update_group_contacts_option : UpdateGroupContacts)
      if @api_client.config.debugging
        Log.debug {"Calling API: GroupControllerApi.remove_contacts_from_group ..."}
      end
      # verify the required parameter "group_id" is set
      if @api_client.config.client_side_validation && group_id.nil?
        raise ArgumentError.new("Missing the required parameter 'group_id' when calling GroupControllerApi.remove_contacts_from_group")
      end
      # verify the required parameter "update_group_contacts_option" is set
      if @api_client.config.client_side_validation && update_group_contacts_option.nil?
        raise ArgumentError.new("Missing the required parameter 'update_group_contacts_option' when calling GroupControllerApi.remove_contacts_from_group")
      end
      # resource path
      local_var_path = "/groups/{groupId}/contacts".sub("{" + "groupId" + "}", URI.encode(group_id.to_s))

      # query parameters
      query_params = Hash(Symbol, String).new

      # header parameters
      header_params = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/json"])

      # form parameters
      form_params = Hash(Symbol, String).new

      # http body (model)
      post_body = update_group_contacts_option.to_json

      # return_type
      return_type = "GroupContactsDto"

      # auth_names
      auth_names = ["API_KEY"]

      data, status_code, headers = @api_client.call_api(:DELETE,
                                                        local_var_path,
                                                        :"GroupControllerApi.remove_contacts_from_group",
                                                        return_type,
                                                        post_body,
                                                        auth_names,
                                                        header_params,
                                                        query_params,
                                                        form_params)
      if @api_client.config.debugging
        Log.debug {"API called: GroupControllerApi#remove_contacts_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"}
      end
      return GroupContactsDto.from_json(data), status_code, headers
    end
  end
end
