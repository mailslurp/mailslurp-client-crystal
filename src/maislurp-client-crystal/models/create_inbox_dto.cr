# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "time"

module 
  # Options for creating an inbox. An inbox has a real email address that can send and receive emails. Inboxes can be permanent or expire at a given time. Inboxes are either `SMTP` or `HTTP` mailboxes. `SMTP` inboxes are processed by a mail server running at `mx.mailslurp.com` while `HTTP` inboxes are processed by AWS SES. Inboxes can use a custom email address (by verifying your own domain) or a randomly assigned email ending in either `mailslurp.com` or (if `useDomainPool` is enabled) ending in a similar domain such as `mailslurp.xyz` (selected at random). 
  class CreateInboxDto include JSON::Serializable
   include JSON::Serializable 
    # A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    @[JSON::Field(key: emailAddress, type: String)]
    property email_address : String


    # Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
    @[JSON::Field(key: name, type: String)]
    property name : String


    # Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
    @[JSON::Field(key: description, type: String)]
    property description : String


    # Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
    @[JSON::Field(key: useDomainPool, type: Bool)]
    property use_domain_pool : Bool


    # Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    @[JSON::Field(key: tags, type: Array(String))]
    property tags : Array(String)


    # Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
    @[JSON::Field(key: expiresAt, type: Time)]
    property expires_at : Time


    # Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
    @[JSON::Field(key: favourite, type: Bool)]
    property favourite : Bool


    # Number of milliseconds that inbox should exist for
    @[JSON::Field(key: expiresIn, type: Int64)]
    property expires_in : Int64


    # DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
    @[JSON::Field(key: allowTeamAccess, type: Bool)]
    property allow_team_access : Bool


    # Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
    @[JSON::Field(key: inboxType, type: String)]
    property inbox_type : String

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@email_address : String | Nil, @name : String | Nil, @description : String | Nil, @use_domain_pool : Bool | Nil, @tags : Array(String) | Nil, @expires_at : Time | Nil, @favourite : Bool | Nil, @expires_in : Int64 | Nil, @allow_team_access : Bool | Nil, @inbox_type : String | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      inbox_type_validator = EnumAttributeValidator.new("String", ["HTTP_INBOX", "SMTP_INBOX"])
      return false unless inbox_type_validator.valid?(@inbox_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbox_type Object to be assigned
    def inbox_type=(inbox_type)
      validator = EnumAttributeValidator.new("String", ["HTTP_INBOX", "SMTP_INBOX"])
      unless validator.valid?(inbox_type)
        raise ArgumentError.new("invalid value for \"inbox_type\", must be one of #{validator.allowable_values}.")
      end
      @inbox_type = inbox_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email_address == o.email_address &&
          name == o.name &&
          description == o.description &&
          use_domain_pool == o.use_domain_pool &&
          tags == o.tags &&
          expires_at == o.expires_at &&
          favourite == o.favourite &&
          expires_in == o.expires_in &&
          allow_team_access == o.allow_team_access &&
          inbox_type == o.inbox_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email_address, name, description, use_domain_pool, tags, expires_at, favourite, expires_in, allow_team_access, inbox_type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of Symbol => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = .const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of Symbol => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of Symbol => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
