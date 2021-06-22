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
  # Representation of a webhook for an inbox. The URL specified will be using by MailSlurp whenever an email is received by the attached inbox. A webhook entity should have a URL that points to your server. Your server should accept HTTP/S POST requests and return a success 200. MailSlurp will retry your webhooks if they fail. See https://api.mailslurp.com/schemas/webhook-payload for the payload schema.
  class WebhookDto include JSON::Serializable
   include JSON::Serializable 
    # Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself.
    @[JSON::Field(key: basicAuth, type: Bool)]
    property basic_auth : Bool


    # When the webhook was created
    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    @[JSON::Field(key: eventName, type: String)]
    property event_name : String


    # ID of the Webhook
    @[JSON::Field(key: id, type: String)]
    property id : String


    # The inbox that the Webhook will be triggered by
    @[JSON::Field(key: inboxId, type: String)]
    property inbox_id : String


    # HTTP method that your server endpoint must listen for
    @[JSON::Field(key: method, type: String)]
    property method : String


    # Name of the webhook
    @[JSON::Field(key: name, type: String)]
    property name : String


    # JSON Schema for the payload that will be sent to your URL via the HTTP method described.
    @[JSON::Field(key: payloadJsonSchema, type: String)]
    property payload_json_schema : String


    @[JSON::Field(key: updatedAt, type: Time)]
    property updated_at : Time


    # URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema.
    @[JSON::Field(key: url, type: String)]
    property url : String


    # User ID of the Webhook
    @[JSON::Field(key: userId, type: String)]
    property user_id : String

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
    def initialize(@basic_auth : Bool | Nil, @created_at : Time | Nil, @event_name : String | Nil, @id : String | Nil, @inbox_id : String | Nil, @method : String | Nil, @name : String | Nil, @payload_json_schema : String | Nil, @updated_at : Time, @url : String | Nil, @user_id : String | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @updated_at.nil?
        invalid_properties.push("invalid value for \"updated_at\", updated_at cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      event_name_validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT"])
      return false unless event_name_validator.valid?(@event_name)
      method_validator = EnumAttributeValidator.new("String", ["GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"])
      return false unless method_validator.valid?(@method)
      return false if @updated_at.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_name Object to be assigned
    def event_name=(event_name)
      validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT"])
      unless validator.valid?(event_name)
        raise ArgumentError.new("invalid value for \"event_name\", must be one of #{validator.allowable_values}.")
      end
      @event_name = event_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] method Object to be assigned
    def method=(method)
      validator = EnumAttributeValidator.new("String", ["GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"])
      unless validator.valid?(method)
        raise ArgumentError.new("invalid value for \"method\", must be one of #{validator.allowable_values}.")
      end
      @method = method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          basic_auth == o.basic_auth &&
          created_at == o.created_at &&
          event_name == o.event_name &&
          id == o.id &&
          inbox_id == o.inbox_id &&
          method == o.method &&
          name == o.name &&
          payload_json_schema == o.payload_json_schema &&
          updated_at == o.updated_at &&
          url == o.url &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [basic_auth, created_at, event_name, id, inbox_id, method, name, payload_json_schema, updated_at, url, user_id].hash
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
