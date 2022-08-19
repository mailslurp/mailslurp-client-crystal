# #MailSlurp API
#
##MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
#
#The version of the OpenAPI document: 6.5.2
#Contact: contact@mailslurp.dev
#Generated by: https://openapi-generator.tech
#OpenAPI Generator version: 5.1.1
#

require "time"

module 
  # Result of a webhook notification
  class WebhookResultDto include JSON::Serializable
   include JSON::Serializable 
    @[JSON::Field(key: id, type: String)]
    property id : String


    @[JSON::Field(key: userId, type: String)]
    property user_id : String


    @[JSON::Field(key: inboxId, type: String)]
    property inbox_id : String


    @[JSON::Field(key: webhookId, type: String)]
    property webhook_id : String


    @[JSON::Field(key: webhookUrl, type: String)]
    property webhook_url : String


    @[JSON::Field(key: messageId, type: String)]
    property message_id : String


    @[JSON::Field(key: redriveId, type: String)]
    property redrive_id : String


    @[JSON::Field(key: httpMethod, type: String)]
    property http_method : String


    @[JSON::Field(key: webhookEvent, type: String)]
    property webhook_event : String


    @[JSON::Field(key: responseStatus, type: Int32)]
    property response_status : Int32


    @[JSON::Field(key: responseTimeMillis, type: Int64)]
    property response_time_millis : Int64


    @[JSON::Field(key: responseBodyExtract, type: String)]
    property response_body_extract : String


    @[JSON::Field(key: resultType, type: String)]
    property result_type : String


    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    @[JSON::Field(key: updatedAt, type: Time)]
    property updated_at : Time


    @[JSON::Field(key: seen, type: Bool)]
    property seen : Bool

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
    def initialize(@id : String | Nil, @user_id : String, @inbox_id : String | Nil, @webhook_id : String, @webhook_url : String, @message_id : String, @redrive_id : String | Nil, @http_method : String, @webhook_event : String, @response_status : Int32 | Nil, @response_time_millis : Int64, @response_body_extract : String | Nil, @result_type : String | Nil, @created_at : Time, @updated_at : Time, @seen : Bool)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @user_id.nil?
        invalid_properties.push("invalid value for \"user_id\", user_id cannot be nil.")
      end

      if @webhook_id.nil?
        invalid_properties.push("invalid value for \"webhook_id\", webhook_id cannot be nil.")
      end

      if @webhook_url.nil?
        invalid_properties.push("invalid value for \"webhook_url\", webhook_url cannot be nil.")
      end

      if @message_id.nil?
        invalid_properties.push("invalid value for \"message_id\", message_id cannot be nil.")
      end

      if @http_method.nil?
        invalid_properties.push("invalid value for \"http_method\", http_method cannot be nil.")
      end

      if @webhook_event.nil?
        invalid_properties.push("invalid value for \"webhook_event\", webhook_event cannot be nil.")
      end

      if @response_time_millis.nil?
        invalid_properties.push("invalid value for \"response_time_millis\", response_time_millis cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @updated_at.nil?
        invalid_properties.push("invalid value for \"updated_at\", updated_at cannot be nil.")
      end

      if @seen.nil?
        invalid_properties.push("invalid value for \"seen\", seen cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @user_id.nil?
      return false if @webhook_id.nil?
      return false if @webhook_url.nil?
      return false if @message_id.nil?
      return false if @http_method.nil?
      http_method_validator = EnumAttributeValidator.new("String", ["GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"])
      return false unless http_method_validator.valid?(@http_method)
      return false if @webhook_event.nil?
      webhook_event_validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS"])
      return false unless webhook_event_validator.valid?(@webhook_event)
      return false if @response_time_millis.nil?
      result_type_validator = EnumAttributeValidator.new("String", ["BAD_RESPONSE", "EXCEPTION", "SUCCESS"])
      return false unless result_type_validator.valid?(@result_type)
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @seen.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] http_method Object to be assigned
    def http_method=(http_method)
      validator = EnumAttributeValidator.new("String", ["GET", "HEAD", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "TRACE"])
      unless validator.valid?(http_method)
        raise ArgumentError.new("invalid value for \"http_method\", must be one of #{validator.allowable_values}.")
      end
      @http_method = http_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_event Object to be assigned
    def webhook_event=(webhook_event)
      validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS"])
      unless validator.valid?(webhook_event)
        raise ArgumentError.new("invalid value for \"webhook_event\", must be one of #{validator.allowable_values}.")
      end
      @webhook_event = webhook_event
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result_type Object to be assigned
    def result_type=(result_type)
      validator = EnumAttributeValidator.new("String", ["BAD_RESPONSE", "EXCEPTION", "SUCCESS"])
      unless validator.valid?(result_type)
        raise ArgumentError.new("invalid value for \"result_type\", must be one of #{validator.allowable_values}.")
      end
      @result_type = result_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          inbox_id == o.inbox_id &&
          webhook_id == o.webhook_id &&
          webhook_url == o.webhook_url &&
          message_id == o.message_id &&
          redrive_id == o.redrive_id &&
          http_method == o.http_method &&
          webhook_event == o.webhook_event &&
          response_status == o.response_status &&
          response_time_millis == o.response_time_millis &&
          response_body_extract == o.response_body_extract &&
          result_type == o.result_type &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          seen == o.seen
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, inbox_id, webhook_id, webhook_url, message_id, redrive_id, http_method, webhook_event, response_status, response_time_millis, response_body_extract, result_type, created_at, updated_at, seen].hash
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
