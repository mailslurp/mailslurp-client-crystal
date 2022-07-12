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
  # NEW_EMAIL webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to. Use the email ID to fetch the full email body or attachments.
  class WebhookNewEmailPayload include JSON::Serializable
   include JSON::Serializable 
    # Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
    @[JSON::Field(key: messageId, type: String)]
    property message_id : String


    # ID of webhook entity being triggered
    @[JSON::Field(key: webhookId, type: String)]
    property webhook_id : String


    # Name of the event type webhook is being triggered for.
    @[JSON::Field(key: eventName, type: String)]
    property event_name : String


    # Name of the webhook being triggered
    @[JSON::Field(key: webhookName, type: String)]
    property webhook_name : String


    # Id of the inbox that received an email
    @[JSON::Field(key: inboxId, type: String)]
    property inbox_id : String


    # ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
    @[JSON::Field(key: emailId, type: String)]
    property email_id : String


    # Date time of event creation
    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    # List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
    @[JSON::Field(key: to, type: Array(String))]
    property to : Array(String)


    # Who the email was sent from. An email address - see fromName for the sender name.
    @[JSON::Field(key: from, type: String)]
    property from : String


    # List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
    @[JSON::Field(key: cc, type: Array(String))]
    property cc : Array(String)


    # List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
    @[JSON::Field(key: bcc, type: Array(String))]
    property bcc : Array(String)


    # The subject line of the email message as specified by SMTP subject header
    @[JSON::Field(key: subject, type: String)]
    property subject : String


    # List of attachment meta data objects if attachments present
    @[JSON::Field(key: attachmentMetaDatas, type: Array(AttachmentMetaData))]
    property attachment_meta_datas : Array(AttachmentMetaData)

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
    def initialize(@message_id : String, @webhook_id : String, @event_name : String, @webhook_name : String | Nil, @inbox_id : String, @email_id : String, @created_at : Time, @to : Array(String), @from : String, @cc : Array(String), @bcc : Array(String), @subject : String | Nil, @attachment_meta_datas : Array(AttachmentMetaData))
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

      if @inbox_id.nil?
        invalid_properties.push("invalid value for \"inbox_id\", inbox_id cannot be nil.")
      end

      if @email_id.nil?
        invalid_properties.push("invalid value for \"email_id\", email_id cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @to.nil?
        invalid_properties.push("invalid value for \"to\", to cannot be nil.")
      end

      if @from.nil?
        invalid_properties.push("invalid value for \"from\", from cannot be nil.")
      end

      if @cc.nil?
        invalid_properties.push("invalid value for \"cc\", cc cannot be nil.")
      end

      if @bcc.nil?
        invalid_properties.push("invalid value for \"bcc\", bcc cannot be nil.")
      end

      if @attachment_meta_datas.nil?
        invalid_properties.push("invalid value for \"attachment_meta_datas\", attachment_meta_datas cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @message_id.nil?
      return false if @webhook_id.nil?
      return false if @event_name.nil?
      event_name_validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS"])
      return false unless event_name_validator.valid?(@event_name)
      return false if @inbox_id.nil?
      return false if @email_id.nil?
      return false if @created_at.nil?
      return false if @to.nil?
      return false if @from.nil?
      return false if @cc.nil?
      return false if @bcc.nil?
      return false if @attachment_meta_datas.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_name Object to be assigned
    def event_name=(event_name)
      validator = EnumAttributeValidator.new("String", ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS"])
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
          event_name == o.event_name &&
          webhook_name == o.webhook_name &&
          inbox_id == o.inbox_id &&
          email_id == o.email_id &&
          created_at == o.created_at &&
          to == o.to &&
          from == o.from &&
          cc == o.cc &&
          bcc == o.bcc &&
          subject == o.subject &&
          attachment_meta_datas == o.attachment_meta_datas
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [message_id, webhook_id, event_name, webhook_name, inbox_id, email_id, created_at, to, from, cc, bcc, subject, attachment_meta_datas].hash
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
