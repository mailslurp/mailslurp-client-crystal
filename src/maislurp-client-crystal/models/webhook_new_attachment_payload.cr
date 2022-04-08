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
  # NEW_ATTACHMENT webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to that contains an attachment. You can use the attachmentId to download the attachment.
  class WebhookNewAttachmentPayload include JSON::Serializable
   include JSON::Serializable 
    # Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
    @[JSON::Field(key: messageId, type: String)]
    property message_id : String


    # ID of webhook entity being triggered
    @[JSON::Field(key: webhookId, type: String)]
    property webhook_id : String


    # Name of the webhook being triggered
    @[JSON::Field(key: webhookName, type: String)]
    property webhook_name : String


    # Name of the event type webhook is being triggered for.
    @[JSON::Field(key: eventName, type: String)]
    property event_name : String


    # ID of attachment. Use the `AttachmentController` to
    @[JSON::Field(key: attachmentId, type: String)]
    property attachment_id : String


    # Filename of the attachment if present
    @[JSON::Field(key: name, type: String)]
    property name : String


    # Content type of attachment such as 'image/png' or 'application/pdf
    @[JSON::Field(key: contentType, type: String)]
    property content_type : String


    # Size of attachment in bytes
    @[JSON::Field(key: contentLength, type: Int64)]
    property content_length : Int64

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
    def initialize(@message_id : String, @webhook_id : String, @webhook_name : String | Nil, @event_name : String, @attachment_id : String, @name : String, @content_type : String, @content_length : Int64)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @message_id.nil?
        invalid_properties.push("invalid value for \"message_id\", message_id cannot be nil.")
      end

      if @webhook_id.nil?
        invalid_properties.push("invalid value for \"webhook_id\", webhook_id cannot be nil.")
      end

      if @event_name.nil?
        invalid_properties.push("invalid value for \"event_name\", event_name cannot be nil.")
      end

      if @attachment_id.nil?
        invalid_properties.push("invalid value for \"attachment_id\", attachment_id cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for \"name\", name cannot be nil.")
      end

      if @content_type.nil?
        invalid_properties.push("invalid value for \"content_type\", content_type cannot be nil.")
      end

      if @content_length.nil?
        invalid_properties.push("invalid value for \"content_length\", content_length cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @message_id.nil?
      return false if @webhook_id.nil?
      return false if @event_name.nil?
      event_name_validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT"])
      return false unless event_name_validator.valid?(@event_name)
      return false if @attachment_id.nil?
      return false if @name.nil?
      return false if @content_type.nil?
      return false if @content_length.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_name Object to be assigned
    def event_name=(event_name)
      validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT"])
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
          message_id == o.message_id &&
          webhook_id == o.webhook_id &&
          webhook_name == o.webhook_name &&
          event_name == o.event_name &&
          attachment_id == o.attachment_id &&
          name == o.name &&
          content_type == o.content_type &&
          content_length == o.content_length
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [message_id, webhook_id, webhook_name, event_name, attachment_id, name, content_type, content_length].hash
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
