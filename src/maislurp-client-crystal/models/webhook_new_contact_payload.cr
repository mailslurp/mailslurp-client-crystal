# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
#
#The version of the OpenAPI document: 6.5.2
#
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "time"

module 
  # NEW_CONTACT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains a recipient that has not been saved as a contact.
  class WebhookNewContactPayload include JSON::Serializable
   include JSON::Serializable 
    @[JSON::Field(key: company, type: String)]
    property company : String


    @[JSON::Field(key: contactId, type: String)]
    property contact_id : String


    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    @[JSON::Field(key: emailAddresses, type: Array(String))]
    property email_addresses : Array(String)


    # Name of the event type webhook is being triggered for.
    @[JSON::Field(key: eventName, type: String)]
    property event_name : String


    @[JSON::Field(key: firstName, type: String)]
    property first_name : String


    @[JSON::Field(key: groupId, type: String)]
    property group_id : String


    @[JSON::Field(key: lastName, type: String)]
    property last_name : String


    # Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
    @[JSON::Field(key: messageId, type: String)]
    property message_id : String


    @[JSON::Field(key: metaData, type: Object)]
    property meta_data : Object


    @[JSON::Field(key: optOut, type: Bool)]
    property opt_out : Bool


    @[JSON::Field(key: primaryEmailAddress, type: String)]
    property primary_email_address : String


    @[JSON::Field(key: tags, type: Array(String))]
    property tags : Array(String)


    # ID of webhook entity being triggered
    @[JSON::Field(key: webhookId, type: String)]
    property webhook_id : String


    # Name of the webhook being triggered
    @[JSON::Field(key: webhookName, type: String)]
    property webhook_name : String

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
    def initialize(@company : String | Nil, @contact_id : String, @created_at : Time, @email_addresses : Array(String), @event_name : String | Nil, @first_name : String | Nil, @group_id : String | Nil, @last_name : String | Nil, @message_id : String | Nil, @meta_data : Object | Nil, @opt_out : Bool | Nil, @primary_email_address : String | Nil, @tags : Array(String), @webhook_id : String | Nil, @webhook_name : String | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @contact_id.nil?
        invalid_properties.push("invalid value for \"contact_id\", contact_id cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @email_addresses.nil?
        invalid_properties.push("invalid value for \"email_addresses\", email_addresses cannot be nil.")
      end

      if @tags.nil?
        invalid_properties.push("invalid value for \"tags\", tags cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @contact_id.nil?
      return false if @created_at.nil?
      return false if @email_addresses.nil?
      event_name_validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED"])
      return false unless event_name_validator.valid?(@event_name)
      return false if @tags.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_name Object to be assigned
    def event_name=(event_name)
      validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED"])
      unless validator.valid?(event_name)
        raise ArgumentError.new("invalid value for \"event_name\", must be one of #{validator.allowable_values}.")
      end
      @event_name = event_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          company == o.company &&
          contact_id == o.contact_id &&
          created_at == o.created_at &&
          email_addresses == o.email_addresses &&
          event_name == o.event_name &&
          first_name == o.first_name &&
          group_id == o.group_id &&
          last_name == o.last_name &&
          message_id == o.message_id &&
          meta_data == o.meta_data &&
          opt_out == o.opt_out &&
          primary_email_address == o.primary_email_address &&
          tags == o.tags &&
          webhook_id == o.webhook_id &&
          webhook_name == o.webhook_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [company, contact_id, created_at, email_addresses, event_name, first_name, group_id, last_name, message_id, meta_data, opt_out, primary_email_address, tags, webhook_id, webhook_name].hash
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
