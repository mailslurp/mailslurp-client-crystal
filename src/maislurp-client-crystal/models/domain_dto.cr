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
  # Domain plus verification records and status
  class DomainDto include JSON::Serializable
   include JSON::Serializable 
    @[JSON::Field(key: id, type: String)]
    property id : String


    @[JSON::Field(key: userId, type: String)]
    property user_id : String


    # Custom domain name
    @[JSON::Field(key: domain, type: String)]
    property domain : String


    # Verification tokens
    @[JSON::Field(key: verificationToken, type: String)]
    property verification_token : String


    # Unique token DKIM tokens
    @[JSON::Field(key: dkimTokens, type: Array(String))]
    property dkim_tokens : Array(String)


    # If the domain is missing records then show which pairs are missing.
    @[JSON::Field(key: missingRecordsMessage, type: String, nilable: true, emit_null: true)]
    property missing_records_message : String


    # Whether the domain has missing required records. If true then see the domain in the dashboard app.
    @[JSON::Field(key: hasMissingRecords, type: Bool)]
    property has_missing_records : Bool


    # Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records.
    @[JSON::Field(key: isVerified, type: Bool)]
    property is_verified : Bool


    # List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
    @[JSON::Field(key: domainNameRecords, type: Array(DomainNameRecord))]
    property domain_name_records : Array(DomainNameRecord)


    # The optional catch all inbox that will receive emails sent to the domain that cannot be matched.
    @[JSON::Field(key: catchAllInboxId, type: String, nilable: true, emit_null: true)]
    property catch_all_inbox_id : String


    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    @[JSON::Field(key: updatedAt, type: Time)]
    property updated_at : Time


    # Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
    @[JSON::Field(key: domainType, type: String)]
    property domain_type : String

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
    def initialize(@id : String, @user_id : String, @domain : String, @verification_token : String, @dkim_tokens : Array(String), @missing_records_message : String | Nil, @has_missing_records : Bool, @is_verified : Bool, @domain_name_records : Array(DomainNameRecord), @catch_all_inbox_id : String | Nil, @created_at : Time, @updated_at : Time, @domain_type : String)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for \"id\", id cannot be nil.")
      end

      if @user_id.nil?
        invalid_properties.push("invalid value for \"user_id\", user_id cannot be nil.")
      end

      if @domain.nil?
        invalid_properties.push("invalid value for \"domain\", domain cannot be nil.")
      end

      if @verification_token.nil?
        invalid_properties.push("invalid value for \"verification_token\", verification_token cannot be nil.")
      end

      if @dkim_tokens.nil?
        invalid_properties.push("invalid value for \"dkim_tokens\", dkim_tokens cannot be nil.")
      end

      if @has_missing_records.nil?
        invalid_properties.push("invalid value for \"has_missing_records\", has_missing_records cannot be nil.")
      end

      if @is_verified.nil?
        invalid_properties.push("invalid value for \"is_verified\", is_verified cannot be nil.")
      end

      if @domain_name_records.nil?
        invalid_properties.push("invalid value for \"domain_name_records\", domain_name_records cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @updated_at.nil?
        invalid_properties.push("invalid value for \"updated_at\", updated_at cannot be nil.")
      end

      if @domain_type.nil?
        invalid_properties.push("invalid value for \"domain_type\", domain_type cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @user_id.nil?
      return false if @domain.nil?
      return false if @verification_token.nil?
      return false if @dkim_tokens.nil?
      return false if @has_missing_records.nil?
      return false if @is_verified.nil?
      return false if @domain_name_records.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @domain_type.nil?
      domain_type_validator = EnumAttributeValidator.new("String", ["HTTP_INBOX", "SMTP_DOMAIN"])
      return false unless domain_type_validator.valid?(@domain_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] domain_type Object to be assigned
    def domain_type=(domain_type)
      validator = EnumAttributeValidator.new("String", ["HTTP_INBOX", "SMTP_DOMAIN"])
      unless validator.valid?(domain_type)
        raise ArgumentError.new("invalid value for \"domain_type\", must be one of #{validator.allowable_values}.")
      end
      @domain_type = domain_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          domain == o.domain &&
          verification_token == o.verification_token &&
          dkim_tokens == o.dkim_tokens &&
          missing_records_message == o.missing_records_message &&
          has_missing_records == o.has_missing_records &&
          is_verified == o.is_verified &&
          domain_name_records == o.domain_name_records &&
          catch_all_inbox_id == o.catch_all_inbox_id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          domain_type == o.domain_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, domain, verification_token, dkim_tokens, missing_records_message, has_missing_records, is_verified, domain_name_records, catch_all_inbox_id, created_at, updated_at, domain_type].hash
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
