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
  # Options for creating an inbox replier
  class CreateInboxReplierOptions include JSON::Serializable
   include JSON::Serializable 
    # Inbox ID to attach replier to
    @[JSON::Field(key: inboxId, type: String)]
    property inbox_id : String


    # Name for replier
    @[JSON::Field(key: name, type: String, nilable: true, emit_null: true)]
    property name : String


    # Field to match against to trigger inbox replier for inbound email
    @[JSON::Field(key: field, type: String)]
    property field : String


    # String or wildcard style match for field specified when evaluating reply rules
    @[JSON::Field(key: match, type: String)]
    property match : String


    # Reply-to email address when sending replying
    @[JSON::Field(key: replyTo, type: String, nilable: true, emit_null: true)]
    property reply_to : String


    # Subject override when replying to email
    @[JSON::Field(key: subject, type: String, nilable: true, emit_null: true)]
    property subject : String


    # Send email from address
    @[JSON::Field(key: from, type: String, nilable: true, emit_null: true)]
    property from : String


    # Email reply charset
    @[JSON::Field(key: charset, type: String, nilable: true, emit_null: true)]
    property charset : String


    # Ignore sender replyTo when responding. Send directly to the sender if enabled.
    @[JSON::Field(key: ignoreReplyTo, type: Bool)]
    property ignore_reply_to : Bool


    # Send HTML email
    @[JSON::Field(key: isHTML, type: Bool, nilable: true, emit_null: true)]
    property is_html : Bool


    # Email body for reply
    @[JSON::Field(key: body, type: String, nilable: true, emit_null: true)]
    property body : String


    # ID of template to use when sending a reply
    @[JSON::Field(key: templateId, type: String, nilable: true, emit_null: true)]
    property template_id : String


    # Template variable values
    @[JSON::Field(key: templateVariables, type: Hash(String, Object), nilable: true, emit_null: true)]
    property template_variables : Hash(String, Object)

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
    def initialize(@inbox_id : String, @name : String | Nil, @field : String, @match : String, @reply_to : String | Nil, @subject : String | Nil, @from : String | Nil, @charset : String | Nil, @ignore_reply_to : Bool | Nil, @is_html : Bool | Nil, @body : String | Nil, @template_id : String | Nil, @template_variables : Hash(String, Object) | Nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @inbox_id.nil?
        invalid_properties.push("invalid value for \"inbox_id\", inbox_id cannot be nil.")
      end

      if @field.nil?
        invalid_properties.push("invalid value for \"field\", field cannot be nil.")
      end

      if @match.nil?
        invalid_properties.push("invalid value for \"match\", match cannot be nil.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @inbox_id.nil?
      return false if @field.nil?
      field_validator = EnumAttributeValidator.new("String", ["RECIPIENTS", "SENDER", "SUBJECT", "ATTACHMENTS"])
      return false unless field_validator.valid?(@field)
      return false if @match.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] field Object to be assigned
    def field=(field)
      validator = EnumAttributeValidator.new("String", ["RECIPIENTS", "SENDER", "SUBJECT", "ATTACHMENTS"])
      unless validator.valid?(field)
        raise ArgumentError.new("invalid value for \"field\", must be one of #{validator.allowable_values}.")
      end
      @field = field
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          inbox_id == o.inbox_id &&
          name == o.name &&
          field == o.field &&
          match == o.match &&
          reply_to == o.reply_to &&
          subject == o.subject &&
          from == o.from &&
          charset == o.charset &&
          ignore_reply_to == o.ignore_reply_to &&
          is_html == o.is_html &&
          body == o.body &&
          template_id == o.template_id &&
          template_variables == o.template_variables
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [inbox_id, name, field, match, reply_to, subject, from, charset, ignore_reply_to, is_html, body, template_id, template_variables].hash
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
