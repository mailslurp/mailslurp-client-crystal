# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "time"

module 
  # Representation of a MailSlurp inbox. An inbox has an ID and a real email address. Emails can be sent to or from this email address. Inboxes are either `SMTP` or `HTTP` mailboxes. The default, `HTTP` inboxes, use AWS SES to process emails and are best suited as test email accounts and do not support IMAP or POP3. `SMTP` inboxes use a custom mail server at `mxslurp.click` and support SMTP login, IMAP and POP3. Use the `EmailController` or the `InboxController` methods to send and receive emails and attachments. Inboxes may have a description, name, and tags for display purposes. You can also favourite an inbox for easier searching.
  class InboxDto include JSON::Serializable
   include JSON::Serializable 
    # ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
    @[JSON::Field(key: id, type: String)]
    property id : String


    # ID of user that inbox belongs to
    @[JSON::Field(key: userId, type: String, nilable: true, emit_null: true)]
    property user_id : String


    # When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    # Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
    @[JSON::Field(key: name, type: String, nilable: true, emit_null: true)]
    property name : String


    # ID of custom domain used by the inbox if any
    @[JSON::Field(key: domainId, type: String, nilable: true, emit_null: true)]
    property domain_id : String


    # Description of an inbox for labelling and searching purposes
    @[JSON::Field(key: description, type: String, nilable: true, emit_null: true)]
    property description : String


    # The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
    @[JSON::Field(key: emailAddress, type: String)]
    property email_address : String


    # Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
    @[JSON::Field(key: expiresAt, type: Time, nilable: true, emit_null: true)]
    property expires_at : Time


    # Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
    @[JSON::Field(key: favourite, type: Bool)]
    property favourite : Bool


    # Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
    @[JSON::Field(key: tags, type: Array(String), nilable: true, emit_null: true)]
    property tags : Array(String)


    # Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
    @[JSON::Field(key: inboxType, type: String, nilable: true, emit_null: true)]
    property inbox_type : String


    # Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
    @[JSON::Field(key: readOnly, type: Bool)]
    property read_only : Bool


    # Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions.
    @[JSON::Field(key: virtualInbox, type: Bool)]
    property virtual_inbox : Bool


    # Inbox function if used as a primitive for another system.
    @[JSON::Field(key: functionsAs, type: String, nilable: true, emit_null: true)]
    property functions_as : String


    # Local part of email addresses before the @ symbol
    @[JSON::Field(key: localPart, type: String, nilable: true, emit_null: true)]
    property local_part : String


    # Domain name of the email address
    @[JSON::Field(key: domain, type: String, nilable: true, emit_null: true)]
    property domain : String


    # Region of the inbox
    @[JSON::Field(key: accountRegion, type: String, nilable: true, emit_null: true)]
    property account_region : String

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
    def initialize(@id : String, @user_id : String, @created_at : Time, @name : String | Nil, @domain_id : String | Nil, @description : String | Nil, @email_address : String, @expires_at : Time | Nil, @favourite : Bool, @tags : Array(String) | Nil, @inbox_type : String | Nil, @read_only : Bool, @virtual_inbox : Bool, @functions_as : String | Nil, @local_part : String | Nil, @domain : String | Nil, @account_region : String | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for \"id\", id cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @email_address.nil?
        invalid_properties.push("invalid value for \"email_address\", email_address cannot be nil.")
      end

      if @favourite.nil?
        invalid_properties.push("invalid value for \"favourite\", favourite cannot be nil.")
      end

      if @read_only.nil?
        invalid_properties.push("invalid value for \"read_only\", read_only cannot be nil.")
      end

      if @virtual_inbox.nil?
        invalid_properties.push("invalid value for \"virtual_inbox\", virtual_inbox cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @email_address.nil?
      return false if @favourite.nil?
      inbox_type_validator = EnumAttributeValidator.new("String", ["HTTP_INBOX", "SMTP_INBOX"])
      return false unless inbox_type_validator.valid?(@inbox_type)
      return false if @read_only.nil?
      return false if @virtual_inbox.nil?
      functions_as_validator = EnumAttributeValidator.new("String", ["ALIAS", "THREAD", "CATCH_ALL", "CONNECTOR", "ACCOUNT", "GUEST", "OAUTH_CONNECTION_GMAIL"])
      return false unless functions_as_validator.valid?(@functions_as)
      account_region_validator = EnumAttributeValidator.new("String", ["US_WEST_2"])
      return false unless account_region_validator.valid?(@account_region)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] functions_as Object to be assigned
    def functions_as=(functions_as)
      validator = EnumAttributeValidator.new("String", ["ALIAS", "THREAD", "CATCH_ALL", "CONNECTOR", "ACCOUNT", "GUEST", "OAUTH_CONNECTION_GMAIL"])
      unless validator.valid?(functions_as)
        raise ArgumentError.new("invalid value for \"functions_as\", must be one of #{validator.allowable_values}.")
      end
      @functions_as = functions_as
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_region Object to be assigned
    def account_region=(account_region)
      validator = EnumAttributeValidator.new("String", ["US_WEST_2"])
      unless validator.valid?(account_region)
        raise ArgumentError.new("invalid value for \"account_region\", must be one of #{validator.allowable_values}.")
      end
      @account_region = account_region
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          created_at == o.created_at &&
          name == o.name &&
          domain_id == o.domain_id &&
          description == o.description &&
          email_address == o.email_address &&
          expires_at == o.expires_at &&
          favourite == o.favourite &&
          tags == o.tags &&
          inbox_type == o.inbox_type &&
          read_only == o.read_only &&
          virtual_inbox == o.virtual_inbox &&
          functions_as == o.functions_as &&
          local_part == o.local_part &&
          domain == o.domain &&
          account_region == o.account_region
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, created_at, name, domain_id, description, email_address, expires_at, favourite, tags, inbox_type, read_only, virtual_inbox, functions_as, local_part, domain, account_region].hash
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
