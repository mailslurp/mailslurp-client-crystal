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
  # An email thread is a message thread created for a email based on Message-ID, In-Reply-To, and References headers
  class EmailThreadProjection include JSON::Serializable
   include JSON::Serializable 
    @[JSON::Field(key: sender, type: SenderProjection)]
    property sender : SenderProjection


    @[JSON::Field(key: recipients, type: EmailRecipientsProjection)]
    property recipients : EmailRecipientsProjection


    # Inbox ID
    @[JSON::Field(key: inboxId, type: String)]
    property inbox_id : String


    # User ID
    @[JSON::Field(key: userId, type: String)]
    property user_id : String


    # Updated at DateTime
    @[JSON::Field(key: updatedAt, type: Time)]
    property updated_at : Time


    # Created at DateTime
    @[JSON::Field(key: createdAt, type: Time)]
    property created_at : Time


    # To recipients
    @[JSON::Field(key: to, type: Array(String))]
    property to : Array(String)


    # CC recipients
    @[JSON::Field(key: cc, type: Array(String))]
    property cc : Array(String)


    # BCC recipients
    @[JSON::Field(key: bcc, type: Array(String))]
    property bcc : Array(String)


    # Has attachments
    @[JSON::Field(key: hasAttachments, type: Bool)]
    property has_attachments : Bool


    # Has unread
    @[JSON::Field(key: unread, type: Bool)]
    property unread : Bool


    # Number of messages in the thread
    @[JSON::Field(key: messageCount, type: Int32)]
    property message_count : Int32


    # Last body excerpt
    @[JSON::Field(key: lastBodyExcerpt, type: String)]
    property last_body_excerpt : String


    # Last text excerpt
    @[JSON::Field(key: lastTextExcerpt, type: String)]
    property last_text_excerpt : String


    # Last email created time
    @[JSON::Field(key: lastCreatedAt, type: Time)]
    property last_created_at : Time


    # Last sender
    @[JSON::Field(key: lastFrom, type: String)]
    property last_from : String


    @[JSON::Field(key: lastSender, type: SenderProjection)]
    property last_sender : SenderProjection


    # Thread topic subject
    @[JSON::Field(key: subject, type: String)]
    property subject : String


    # ID of email thread
    @[JSON::Field(key: id, type: String)]
    property id : String


    # From sender
    @[JSON::Field(key: from, type: String)]
    property from : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(@sender : SenderProjection | Nil, @recipients : EmailRecipientsProjection | Nil, @inbox_id : String | Nil, @user_id : String, @updated_at : Time, @created_at : Time, @to : Array(String), @cc : Array(String) | Nil, @bcc : Array(String) | Nil, @has_attachments : Bool, @unread : Bool, @message_count : Int32, @last_body_excerpt : String | Nil, @last_text_excerpt : String | Nil, @last_created_at : Time | Nil, @last_from : String | Nil, @last_sender : SenderProjection | Nil, @subject : String | Nil, @id : String, @from : String | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @user_id.nil?
        invalid_properties.push("invalid value for \"user_id\", user_id cannot be nil.")
      end

      if @updated_at.nil?
        invalid_properties.push("invalid value for \"updated_at\", updated_at cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for \"created_at\", created_at cannot be nil.")
      end

      if @to.nil?
        invalid_properties.push("invalid value for \"to\", to cannot be nil.")
      end

      if @has_attachments.nil?
        invalid_properties.push("invalid value for \"has_attachments\", has_attachments cannot be nil.")
      end

      if @unread.nil?
        invalid_properties.push("invalid value for \"unread\", unread cannot be nil.")
      end

      if @message_count.nil?
        invalid_properties.push("invalid value for \"message_count\", message_count cannot be nil.")
      end

      if @id.nil?
        invalid_properties.push("invalid value for \"id\", id cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @user_id.nil?
      return false if @updated_at.nil?
      return false if @created_at.nil?
      return false if @to.nil?
      return false if @has_attachments.nil?
      return false if @unread.nil?
      return false if @message_count.nil?
      return false if @id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sender == o.sender &&
          recipients == o.recipients &&
          inbox_id == o.inbox_id &&
          user_id == o.user_id &&
          updated_at == o.updated_at &&
          created_at == o.created_at &&
          to == o.to &&
          cc == o.cc &&
          bcc == o.bcc &&
          has_attachments == o.has_attachments &&
          unread == o.unread &&
          message_count == o.message_count &&
          last_body_excerpt == o.last_body_excerpt &&
          last_text_excerpt == o.last_text_excerpt &&
          last_created_at == o.last_created_at &&
          last_from == o.last_from &&
          last_sender == o.last_sender &&
          subject == o.subject &&
          id == o.id &&
          from == o.from
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sender, recipients, inbox_id, user_id, updated_at, created_at, to, cc, bcc, has_attachments, unread, message_count, last_body_excerpt, last_text_excerpt, last_created_at, last_from, last_sender, subject, id, from].hash
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
